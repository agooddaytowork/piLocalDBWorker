QT += core sql network serialbus
QT -= gui

CONFIG += c++11

TARGET = piLocalDBWorkerExec
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    binaryprotocol.cpp \
    canprotocol.cpp \
    windowprotocol.cpp \
    piLocalDBWorker/pilocaldbworker.cpp \
    piLocalDBWorker/pilocaldbworkervarset.cpp \
    piLocalDBWorker/connectdatabase.cpp \
    piLocalDBWorker/updateonlinedatabase.cpp \
    piLocalDBWorker/setissentcolumnonlocaldatabase.cpp \
    piLocalDBWorker/updatelocaldatabase.cpp \
    piLocalDBWorker/directtransition4pilocaldbworkerstate.cpp \
    piLocalDBWorker/wait4errorhandler4pilocaldbworker.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    anlogger.h \
    binaryprotocol.h \
    canprotocol.h \
    commonthings.h \
    windowprotocol.h \
    piLocalDBWorker/pilocaldbworker.h \
    piLocalDBWorker/pilocaldbworkervarset.h \
    piLocalDBWorker/connectdatabase.h \
    piLocalDBWorker/updateonlinedatabase.h \
    piLocalDBWorker/setissentcolumnonlocaldatabase.h \
    piLocalDBWorker/updatelocaldatabase.h \
    piLocalDBWorker/directtransition4pilocaldbworkerstate.h \
    piLocalDBWorker/wait4errorhandler4pilocaldbworker.h
