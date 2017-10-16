#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QThread *aThread = new QThread();
    piLocalDBWorker *piDBWorker = new piLocalDBWorker();
    piDBWorker->setObjectName(piLocalDBWorkerObjName);
    piDBWorker->moveToThread(aThread);

    QObject::connect(aThread, &QThread::started, piDBWorker, &piLocalDBWorker::start);

    QObject::connect(piDBWorker, &piLocalDBWorker::Out, this, &MainWindow::In);
    QObject::connect(this, &MainWindow::Out, piDBWorker, &piLocalDBWorker::In);

    aThread->start();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::In(const GlobalSignal &aGlobalSignal)
{
    QString aGlobalSignalTypeTypeName = aGlobalSignal.Type.typeName();
    if (aGlobalSignalTypeTypeName == QStringLiteral("piLocalDBWorkerBasis::Error"))
    {
        switch (aGlobalSignal.Type.toInt()) {
        case piLocalDBWorkerBasis::QSqlErrorOccured:
        {
            ui->pushButton_continue->setEnabled(true);
            ui->textEdit->append(aGlobalSignal.Data.toString());
            break;
        }
        default:
            break;
        }
    }
    else if (aGlobalSignalTypeTypeName == QStringLiteral("piLocalDBWorkerBasis::Notification"))
    {
        switch (aGlobalSignal.Type.toInt()) {
        case piLocalDBWorkerBasis::readyToWork:
        {
            ui->textEdit->append(aGlobalSignal.Data.toString() + " Is Ready To Work !");
            break;
        }
        default:
            break;
        }
    }
}

void MainWindow::on_pushButton_clearBuffer_clicked()
{
    GlobalSignal clearBufferSignal;
    clearBufferSignal.Type = QVariant::fromValue(piLocalDBWorkerBasis::clearBuffer);
    clearBufferSignal.Priority = 500;
    emit Out(clearBufferSignal);
}

void MainWindow::on_pushButton_continue_clicked()
{
    ui->pushButton_continue->setEnabled(false);
    GlobalSignal ignoreErrorSignal;
    ignoreErrorSignal.Type = QVariant::fromValue(piLocalDBWorkerBasis::ignoreError);
    emit Out(ignoreErrorSignal);
}

void MainWindow::on_pushButton_updatePVIData_clicked()
{
    piLocalDBWorkerBasis::PVIData aPVIDataPackage;
    aPVIDataPackage.GlobalID = ui->spinBox_GlobalID4updatePVIData->value();
    aPVIDataPackage.Pressure = ui->plainTextEdit_Pressure->toPlainText();
    aPVIDataPackage.Voltage = ui->plainTextEdit_Voltage->toPlainText();
    aPVIDataPackage.Current = ui->plainTextEdit_Current->toPlainText();
    GlobalSignal updatePVISignal;
    updatePVISignal.Type = QVariant::fromValue(piLocalDBWorkerBasis::updatePVIData);
    updatePVISignal.Data = QVariant::fromValue(aPVIDataPackage);
    emit Out(updatePVISignal);
}

void MainWindow::on_pushButton_updateRFIDData_clicked()
{
    piLocalDBWorkerBasis::RFIDData aRFIDData;
    aRFIDData.GlobalID = ui->spinBox_GlobalID4updateRFIDData->value();
    aRFIDData.srcRFID = ui->plainTextEdit_RFID->toPlainText();
    GlobalSignal updateRFIDSignal;
    updateRFIDSignal.Type = QVariant::fromValue(piLocalDBWorkerBasis::updateRFIDData);
    updateRFIDSignal.Data = QVariant::fromValue(aRFIDData);
    emit Out(updateRFIDSignal);
}

void MainWindow::on_pushButton_executeSQL_clicked()
{
    GlobalSignal execSQLSignal;
    execSQLSignal.Type = QVariant::fromValue(piLocalDBWorkerBasis::executeSQL);
    execSQLSignal.Data = QVariant::fromValue(ui->plainTextEdit_SQL->toPlainText());
    emit Out(execSQLSignal);
}

void MainWindow::on_pushButton_syncOfflineData_clicked()
{
    GlobalSignal syncOfflineDataSignal;
    syncOfflineDataSignal.Type = QVariant::fromValue(piLocalDBWorkerBasis::syncOfflineData);
    emit Out(syncOfflineDataSignal);
}

void MainWindow::on_pushButton_clicked()
{
    qApp->quit();
}
