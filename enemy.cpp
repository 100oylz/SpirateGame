#include "enemy.h"
#include <QGraphicsScene>
#include <QPainter>
#include <QStyleOption>

#include <math.h>

static const double Pi = 3.14159265358979323846264338327950288419717;
static double TwoPi = 2.0 * Pi;

static qreal normalizeAngle(qreal angle)
{
    while (angle < 0)
        angle += TwoPi;
    while (angle > TwoPi)
        angle -= TwoPi;
    return angle;
}

Enemy::Enemy(Spirate *player)
    : angle(0), speed(0), EnemyEyeDirection(0),
      color(qrand() % 256, qrand() % 256, qrand() % 256)
{
    setRotation(qrand() % (360 * 16));
    this->player=player;
}


QRectF Enemy::boundingRect() const
{
    qreal adjust = 0.5;
    return QRectF(-18 - adjust, -22 - adjust,
                  36 + adjust, 60 + adjust);
}

QPainterPath Enemy::shape() const
{
    QPainterPath path;
    path.addRect(-10, -20, 20, 40);
    return path;
}

void Enemy::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
    // Body
    if(alive&&isstart)
    {painter->setBrush(color);
        painter->drawEllipse(-10, -20, 20, 40);

        // Eyes
        painter->setBrush(Qt::white);
        painter->drawEllipse(-10, -17, 8, 8);
        painter->drawEllipse(2, -17, 8, 8);

        // Nose
        painter->setBrush(Qt::black);
        painter->drawEllipse(QRectF(-2, -22, 4, 4));

        // Pupils
        painter->drawEllipse(QRectF(-8.0 + EnemyEyeDirection, -17, 4, 4));
        painter->drawEllipse(QRectF(4.0 + EnemyEyeDirection, -17, 4, 4));

        // Ears
        painter->setBrush(scene()->collidingItems(this).isEmpty() ? Qt::darkYellow : Qt::red);
        painter->drawEllipse(-17, -12, 16, 16);
        painter->drawEllipse(1, -12, 16, 16);

        // Tail
        QPainterPath path(QPointF(0, 20));
        path.cubicTo(-5, 22, -5, 22, 0, 25);
        path.cubicTo(5, 27, 5, 32, 0, 30);
        path.cubicTo(-5, 32, -5, 42, 0, 35);
        painter->setBrush(Qt::NoBrush);
        painter->drawPath(path);}
}

void Enemy::rotate()
{
    QLineF lineToCenter(QPointF(0, 0), mapFromScene(0, 0));
    if (lineToCenter.length() > 300) {
        qreal angleToCenter = ::acos(lineToCenter.dx() / lineToCenter.length());
        if (lineToCenter.dy() < 0)
            angleToCenter = TwoPi - angleToCenter;
        angleToCenter = normalizeAngle((Pi - angleToCenter) + Pi / 2);

        if (angleToCenter < Pi && angleToCenter > Pi / 4) {
            // Rotate left
            angle += (angle < -Pi / 2) ? 0.25 : -0.25;
        } else if (angleToCenter >= Pi && angleToCenter < (Pi + Pi / 2 + Pi / 4)) {
            // Rotate right
            angle += (angle < Pi / 2) ? 0.25 : -0.25;
        }
    } else if (::sin(angle) < 0) {
        angle += 0.25;
    } else if (::sin(angle) > 0) {
        angle -= 0.25;
    }

    QList<QGraphicsItem *> dangerMice = scene()->items(QPolygonF()
                                                       << mapToScene(0, 0)
                                                       << mapToScene(-30, -50)
                                                       << mapToScene(30, -50));
    foreach (QGraphicsItem *item, dangerMice) {
        if (item == this)
            continue;
        if(item==player)
            alive=false;
        QLineF lineToEnemy(QPointF(0, 0), mapFromItem(item, 0, 0));
        qreal angleToEnemy = ::acos(lineToEnemy.dx() / lineToEnemy.length());
        if (lineToEnemy.dy() < 0)
            angleToEnemy = TwoPi - angleToEnemy;
        angleToEnemy = normalizeAngle((Pi - angleToEnemy) + Pi / 2);

        if (angleToEnemy >= 0 && angleToEnemy < Pi / 2) {
            // Rotate right
            angle += 0.5;
        } else if (angleToEnemy <= TwoPi && angleToEnemy > (TwoPi - Pi / 2)) {
            // Rotate left
            angle -= 0.5;
        }
    }
    if (dangerMice.size() > 1 && (qrand() % 10) == 0) {
        if (qrand() % 1)
            angle += (qrand() % 100) / 500.0;
        else
            angle -= (qrand() % 100) / 500.0;
    }
}

void Enemy::update()
{
}

void Enemy::advance(int step)
{
    if(alive)
    {if (!step)
            return;

        rotate();
        speed += (-50 + qrand() % 100) / 50.0;

        qreal dx = ::sin(angle) * 10;
        EnemyEyeDirection = (qAbs(dx / 5) < 1) ? 0 : dx / 5;

        setRotation(rotation() + dx);
        setPos(mapToParent(0, -(3 + sin(speed) * 3)));}
}


