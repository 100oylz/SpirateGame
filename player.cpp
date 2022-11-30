#include "player.h"
#include <QGraphicsScene>
#include <QPainter>
#include <QStyleOption>
#include<QKeyEvent>
#include<cmath>
static qreal DefaultSpeed=-10;

Player::Player():angle(0),speed(0)
{
    setRotation(angle);
}


QRectF Player::boundingRect() const
{
    qreal adjust = 0.5;
    return QRectF(-1*imagewidth/2 - adjust, -1*imageheight/2 - adjust,
                  imagewidth + adjust, imageheight + adjust);
}

void Player::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
    QPixmap pix(QPixmap::fromImage(QImage(image)));
    pix=pix.scaled(imagewidth,imageheight);
    painter->drawPixmap(-imagewidth/2,-imageheight/2,pix);
}

void Player::advance(int step)
{
    if(!step)
        return;
    setRotation(angle);
    setPos(mapToParent(0, speed));
    speed=0;
}

void Player::update(QKeyEvent *key)
{
    switch(key->key())
    {
    case Qt::Key_Up:
        speed=DefaultSpeed;
        break;
    case Qt::Key_Down:
        speed=-1*DefaultSpeed;
        break;
    case Qt::Key_Left:
        rotateleft();
        break;
    case Qt::Key_Right:
        rotateright();
        break;
    default:
        speed=0;
        break;
    }
}

void Player::update()
{

}

QPainterPath Player::shape() const
{
    QPainterPath path;
    path.addRect(-10, -20, 20, 40);
    return path;
}


void Player::rotateleft()
{
    angle +=-10;

}

void Player::rotateright()
{
    angle += 10;
}


void Player::keyPressEvent(QKeyEvent *event)
{
    switch(event->key())
    {
    case Qt::Key_Up:
        speed=DefaultSpeed;
        break;
    case Qt::Key_Down:
        speed=-1*DefaultSpeed;
        break;
    case Qt::Key_Left:
        rotateleft();
        break;
    case Qt::Key_Right:
        rotateright();
        break;
    default:
        speed=0;
        break;
    }
}
