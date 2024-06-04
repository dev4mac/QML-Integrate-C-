#ifndef HELLOCPP_H
#define HELLOCPP_H

#include <QObject>

class HelloCpp : public QObject
{
    Q_OBJECT

public:
    explicit HelloCpp(QObject *parent = 0);
    Q_INVOKABLE QString concatstring(QString usrStr);
    Q_INVOKABLE int doublerint(int vInt);

    QString ch01;
    int varINT;


};

#endif // HELLOCPP_H
