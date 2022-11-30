#ifndef BOARD_H
#define BOARD_H
#include<QtWidgets>
#include<enemy.h>
#include<player.h>
#include<QKeyEvent>
#include<QObject>
#include<QVector>
class Board:public QObject
{
    Q_OBJECT
public:
    QGraphicsScene *scene;
    QGraphicsView *view;
    QTimer *timer;
public:
    Board();
    ~Board();
    void show();
    Player *player;
    QVector<Enemy *> enemylist;
    static const int ENEMYNUM;
protected:
    void keyPressEvent(QKeyEvent *key);
private:
    void initplayer();
    void initenemy(Spirate *player);
    void inittimer();
    void initboard();
signals:
    void start();
};

#endif // BOARD_H
