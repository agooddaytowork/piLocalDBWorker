#include "mainwindow.h"
#include <QApplication>
#include "shared/commonthings.h"

int main(int argc, char *argv[])
{
    connectLocalQSqlDatabase;
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
