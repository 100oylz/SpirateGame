#include "spirate.h"
#include<QPainterPath>
#include<QRectF>

Spirate::Spirate()
{

}


QRectF Spirate::boundingRect() const
{
    qreal adjust = 0.5;
    return QRectF(-18 - adjust, -22 - adjust,
                  36 + adjust, 60 + adjust);
}

QPainterPath Spirate::shape() const
{
    QPainterPath path;
    path.addRect(-10, -20, 20, 40);
    return path;
}
