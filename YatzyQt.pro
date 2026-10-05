QT += core gui widgets

CONFIG += c++11

INCLUDEPATH += include

SOURCES += \
    src/error.cpp \
    src/functions.cpp \
    src/gameengine.cpp \
    src/main.cpp \
    src/mainwindow.cpp \
    src/yatzy_game.cpp

HEADERS += \
    include/error.hh \
    include/functions.hh \
    include/gameengine.hh \
    include/mainwindow.hh \
    include/yatzy_game.hh

FORMS += \
    forms/error.ui \
    forms/mainwindow.ui \
    forms/yatzy_game.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources/resource.qrc
