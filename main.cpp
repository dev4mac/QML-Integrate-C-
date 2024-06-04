#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "hellocpp.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<HelloCpp>("HelloCpp", 1, 0, "HelloCpp");


    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/QML-Integrate-CPP/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
