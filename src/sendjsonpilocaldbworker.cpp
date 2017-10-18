#include "sendjsonpilocaldbworker.h"

sendJsonPiLocalDBWorker::sendJsonPiLocalDBWorker(piLocalDBWorkerBasis *parentBasis, QState *parent) :
    QState(parent),
    basisptr(parentBasis)
{
    setObjectName(QStringLiteral("sendJsonPiLocalDBWorker"));
    timer.setParent(this);
    timer.setInterval(5000);
    timer.setSingleShot(true);
    QObject::connect(&timer, &QTimer::timeout, this, [&](){
        basisptr->setOnOffLine(false);
        basisptr->isCurrentRunningCycleCompleted = true;
        emit basisptr->goToState2();
    });
    anIf(piLocalDBWorkerBasisDbgEn, anAck("sendJsonPiLocalDBWorker Constructed"));
}

void sendJsonPiLocalDBWorker::onEntry(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("sendJsonPiLocalDBWorker Entered"));
    basisptr->currentStateName = objectName();
    if (basisptr->try2SendPendingJsonDataPackage())
    {
        timer.start();
    }
    else
    {
        basisptr->isCurrentRunningCycleCompleted = true;
    }
    qApp->processEvents();
}

void sendJsonPiLocalDBWorker::onExit(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("Leave sendJsonPiLocalDBWorker"));
    timer.stop();
    basisptr->previousStateName = objectName();
}
