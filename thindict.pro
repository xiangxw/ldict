#-------------------------------------------------
#
# Project created by QtCreator 2013-12-18T23:44:30
#
#-------------------------------------------------

QT += core gui webkit
greaterThan(QT_MAJOR_VERSION, 4) {
    QT += webkitwidgets
} else {
    QT += phonon
}

# libqxt
CONFIG += qxt
QXT += core gui

# X11
LIBS += -lX11

TARGET = thindict
TEMPLATE = app


SOURCES += main.cpp\
    mainwindow.cpp \
    settingdialog.cpp \
    shortcutedit.cpp

HEADERS  += mainwindow.h \
    settingdialog.h \
    shortcutedit.h

FORMS    += \
    ui/mainwindow.ui \
    ui/settingdialog.ui

RESOURCES += \
    rc.qrc

TRANSLATIONS += translations/zh_CN.ts

isEmpty(PREFIX) {
    PREFIX = /opt/$$TARGET
}
target.path = $$PREFIX/bin
desktopfile.files = thindict.desktop
desktopfile.path = /usr/share/applications
logofile_png.files = images/thindict.png
logofile_png.path = /usr/share/icons/hicolor/48x48/apps
logofile_svg.files = images/thindict.svg
logofile_svg.path = /usr/share/icons/hicolor/scalable/apps
INSTALLS += target desktopfile logofile_png logofile_svg
