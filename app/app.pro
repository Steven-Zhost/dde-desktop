#-------------------------------------------------
#
# Project created by QtCreator 2015-06-24T09:14:17
#
#-------------------------------------------------

include($$PWD/../build.pri)
include($$PWD/util/util.pri)

QT       += core gui widgets svg dbus x11extras network
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE    = app
TARGET      = dde-desktop
DESTDIR     = $$BUILD_DIST
CONFIG      += c++11 link_pkgconfig
PKGCONFIG   += xcb xcb-ewmh dde-file-manager

SOURCES += \
    main.cpp \
    config/config.cpp \
    desktop.cpp \
    view/canvasviewhelper.cpp \
#    view/canvasview.cpp \
    model/dfileselectionmodel.cpp \
    view/canvasgridview.cpp \
    presenter/apppresenter.cpp \
    presenter/gridmanager.cpp \
    dbus/dbusdisplay.cpp \
    presenter/display.cpp \
    presenter/dfmsocketinterface.cpp \
    view/watermaskframe.cpp



HEADERS += \
    config/config.h \
    desktop.h \
    view/canvasviewhelper.h \
    model/dfileselectionmodel.h \
    view/private/canvasviewprivate.h \
    global/coorinate.h \
    global/singleton.h \
    view/canvasgridview.h \
    presenter/apppresenter.h \
    presenter/gridmanager.h \
    dbus/dbusdisplay.h \
    presenter/display.h \
    presenter/dfmsocketinterface.h \
    view/watermaskframe.h

RESOURCES += \
    resource/theme/theme.qrc

# Automating generation .qm files from .ts files
system($$PWD/translate_generation.sh)
TRANSLATIONS += $$PWD/translations/$${TARGET}.ts \
                $$PWD/translations/$${TARGET}_zh_CN.ts


include($$PWD/development.pri)
