#ifndef ENEMY_H
#define ENEMY_H
#include<spirate.h>

class Enemy : public Spirate
{
public:
    Enemy(Spirate *player);
    QRectF boundingRect() const override;
    QPainterPath shape() const override;
    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option,
               QWidget *widget) override;

    void rotate();
    void update() override;
    Spirate *player=nullptr;
protected:
    void advance(int step) override;
private:
    qreal angle;
    qreal speed;
    qreal EnemyEyeDirection;
    QColor color;
};

#endif // ENEMY_H
