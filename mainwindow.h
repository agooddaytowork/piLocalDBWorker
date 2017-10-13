#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QThread>
#include "shared/commonthings.h"
#include "anLogger/src/anlogger.h"
#include "src/pilocaldbworker.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
signals:
    void Out(const GlobalSignal &);
private slots:
    void In(const GlobalSignal &aGlobalSignal);

    void on_pushButton_clearBuffer_clicked();

    void on_pushButton_continue_clicked();

    void on_pushButton_updatePVIData_clicked();

    void on_pushButton_updateRFIDData_clicked();

    void on_pushButton_executeSQL_clicked();

    void on_pushButton_syncOfflineData_clicked();

    void on_pushButton_clicked();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
