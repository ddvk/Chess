#include <QtQuick>
#include <QQuickView>
#include <QQmlContext>
#include <QtPlugin>

#include "gamecontroller.h"

Q_IMPORT_PLUGIN(QsgEpaperPlugin)

int main(int argc, char *argv[])
{
	 qputenv("QMLSCENE_DEVICE", "epaper");
	 qputenv("QT_QPA_PLATFORM", "epaper:enable_fonts");
	 qputenv("QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS", "rotate=180");
	 qputenv("QT_QPA_GENERIC_PLUGINS", "evdevtablet");

    QGuiApplication app(argc, argv);

    QQuickView view;
    view.rootContext()->setContextProperty("game", new GameController);
    view.setSource(QUrl(QStringLiteral("qrc:/qml/MainWindow.qml")));

	view.show();
    return app.exec();
}
