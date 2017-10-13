#include "idlepilocaldbworker.h"

idlePiLocalDBWorker::idlePiLocalDBWorker(piLocalDBWorkerBasis *parentBasis, QState *parent) :
    QState(parent),
    basisptr(parentBasis)
{
    setObjectName(QStringLiteral("idlePiLocalDBWorker"));
    anIf(piLocalDBWorkerBasisDbgEn, anAck("idlePiLocalDBWorker Constructed"));
}

void idlePiLocalDBWorker::onEntry(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("idlePiLocalDBWorker Entered"));
    qApp->processEvents();
    if (basisptr->previousStateName == QStringLiteral("uninitiatedPiLocalDBWorker"))
    {
        GlobalSignal iamReady;
        iamReady.Type = QVariant::fromValue(piLocalDBWorkerBasis::readyToWork);
        iamReady.Data = QVariant::fromValue(machine()->objectName());
        iamReady.TimeStamp = NOW2String;
        iamReady.DstStrs.append(SmallCoordinatorObjName);
        iamReady.SignalPriority = 200;
        basisptr->addAGlobalSignal(iamReady);
    }
}

void idlePiLocalDBWorker::onExit(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("Leave idlePiLocalDBWorker"));
    basisptr->previousStateName = objectName();
}
