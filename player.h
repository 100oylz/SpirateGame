#ifndef PLAYER_H
#define PLAYER_H
#include<spirate.h>

class Player : public Spirate
{
public:
    QString image=":/new/prefix1/resources/monkey.png";
public:
    Player();
    virtual QPainterPath shape() const override;
    virtual QRectF boundingRect() const override;
    virtual void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget) override;
    virtual void update() override;
    void update(QKeyEvent *key);
protected:
    void advance(int step)override;
    void keyPressEvent(QKeyEvent *event);
private:
    const int imagewidth=60;
    const int imageheight=120;
    qreal angle;
    qreal speed;
    void rotateleft();
    void rotateright();
};

#endif // PLAYER_H
