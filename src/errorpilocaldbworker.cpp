#include "errorpilocaldbworker.h"

errorPiLocalDBWorker::errorPiLocalDBWorker(piLocalDBWorkerBasis *parentBasis, QState *parent) :
    QState(parent),
    basisptr(parentBasis)
{
    setObjectName(QStringLiteral("errorPiLocalDBWorker"));
    anIf(piLocalDBWorkerBasisDbgEn, anAck("errorPiLocalDBWorker Constructed"));
}

void errorPiLocalDBWorker::onEntry(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("errorPiLocalDBWorker Entered"));
    qApp->processEvents();
    basisptr->emitErrorGlobalSignal();
}

void errorPiLocalDBWorker::onExit(QEvent *)
{
    anIf(piLocalDBWorkerBasisDbgEn, anTrk("Leave errorPiLocalDBWorker"));
    basisptr->clearError();
}
