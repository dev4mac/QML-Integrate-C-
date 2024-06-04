#include "hellocpp.h"



HelloCpp::HelloCpp(QObject *parent) :
    QObject(parent)
{
}

QString HelloCpp::concatstring(QString usrStr)
{
    ch01 = usrStr +" / dev4mac";
    return ch01;
}



int HelloCpp::doublerint(int vInt)
{
    varINT = vInt * 2;
    return varINT;

}
