#-------------------------------------------------
#
# Project created by QtCreator 2017-10-12T15:48:31
#
#-------------------------------------------------

QT       += core gui sql network serialbus

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += -std=c++11 console
TARGET = piLocalDBWorker
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
        shared/commonthings.cpp \
        shared/abstractstatemachinebasis.cpp \
        shared/directtransition.cpp \
        anLogger/src/anlogger.cpp \
        BinaryProtocol/src/binaryprotocol.cpp \
        WindowProtocol/src/windowprotocol.cpp \
        CanProtocol/src/canprotocol.cpp \
        src/pilocaldbworker.cpp \
        src/pilocaldbworkerbasis.cpp \
        src/uninitiatedpilocaldbworker.cpp \
        src/idlepilocaldbworker.cpp \
        src/runningpilocaldbworker.cpp \
        src/sendjsonpilocaldbworker.cpp \
        src/setissentpilocaldbworker.cpp \
        src/errorpilocaldbworker.cpp

HEADERS += \
        mainwindow.h \
        shared/commonthings.h \
        shared/abstractstatemachinebasis.h \
        shared/directtransition.h \
        anLogger/src/anlogger.h \
        BinaryProtocol/src/binaryprotocol.h \
        WindowProtocol/src/windowprotocol.h \
        CanProtocol/src/canprotocol.h \
        src/pilocaldbworker.h \
        src/pilocaldbworkerbasis.h \
        src/uninitiatedpilocaldbworker.h \
        src/idlepilocaldbworker.h \
        src/runningpilocaldbworker.h \
        src/sendjsonpilocaldbworker.h \
        src/setissentpilocaldbworker.h \
        src/errorpilocaldbworker.h

FORMS += \
        mainwindow.ui
