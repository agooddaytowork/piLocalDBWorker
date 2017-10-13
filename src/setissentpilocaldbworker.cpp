#include "setissentpilocaldbworker.h"

setIsSentPiLocalDBWorker::setIsSentPiLocalDBWorker(piLocalDBWorkerBasis *parentBasis, QState *parent) :
    QState(parent),
    basisptr(parentBasis)
{
    setObjectName(QStringLiteral("setIsSentPiLocalDBWorker"));
    anIf(piLocalDBWorkerBasisDbgEn, anAck("setIsSentPiLocalDBWorker Constructed"));
}

void setIsSentPiLocalDBWorker::onEntry(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("setIsSentPiLocalDBWorker Entered"));
    basisptr->currentStateName = objectName();
    qApp->processEvents();
    if (basisptr->isPendingJsonDataNotPING())
        basisptr->setIsSentColumnOnLocalDatabase();
    emit basisptr->requestDirectTransition(QStringLiteral("runningPiLocalDBWorker"));
}

void setIsSentPiLocalDBWorker::onExit(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("Leave setIsSentPiLocalDBWorker"));
    basisptr->previousStateName = objectName();
}
