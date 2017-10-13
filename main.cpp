#include <QCoreApplication>
#include "piLocalDBWorker/pilocaldbworker.h"
#include <QThread>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qRegisterMetaType<GlobalSignal>("GlobalSignal");



    anWarn("START TEST");

    piLocalDBWorker * test = new piLocalDBWorker();
    test->start();



    anWarn("MACHINE STARTED");
    return a.exec();
}
