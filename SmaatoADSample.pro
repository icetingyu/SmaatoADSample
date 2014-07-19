APP_NAME = SmaatoADSample

CONFIG += qt warn_on cascades10
INCLUDEPATH += ../lib/public
LIBS += -lbbsystem
LIBS += -lbb
LIBS += -lbbcascadespickers
LIBS += -lexif
LIBS += -lQtLocationSubset
LIBS += -lbbdevice
LIBS += -lbbdata
LIBS += -lbbplatform
LIBS += -lbbpim	
LIBS += -lQtLocationSubset
LIBS += -lbbcascadesmaps
LIBS += -lGLESv1_CM
LIBS += -lbbnetwork
LIBS += -lQtNetwork
LIBS += -lQtCore
LIBS += -lQtXml
include(config.pri)
INCLUDEPATH += ${QNX_TARGET}/usr/include/bb/cascades/pickers
