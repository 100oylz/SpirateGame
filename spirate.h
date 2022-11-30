#ifndef SPIRATE_H
#define SPIRATE_H

#include<QGraphicsItem>
#include<QObject>
class Spirate:public QGraphicsItem
{
public:
    bool alive;

public:
    Spirate();
    QRectF boundingRect() const;
    QPainterPath shape() const;
    virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option,
               QWidget *widget)=0;
    virtual void update()=0;
    bool isstart=false;
};

#endif // SPIRATE_H
