#include "board.h"
const int Board::ENEMYNUM=20;
void Board::initboard()
{

    scene=new QGraphicsScene;
    scene->setSceneRect(-300, -300, 600, 600);
    scene->setItemIndexMethod(QGraphicsScene::NoIndex);
    view=new QGraphicsView(scene);
    view->setRenderHint(QPainter::Antialiasing);
    view->setBackgroundBrush(QPixmap(":/new/prefix1/resources/background.jpg"));
    view->setCacheMode(QGraphicsView::CacheBackground);
//    view->setViewportUpdateMode(QGraphicsView::BoundingRectViewportUpdate);
    view->setDragMode(QGraphicsView::ScrollHandDrag);
    view->setWindowTitle(QT_TRANSLATE_NOOP(QGraphicsView, "SpirateBoard"));
    view->setViewportUpdateMode(QGraphicsView::FullViewportUpdate);
    view->resize(1200, 800);
    view->setFocus();
    view->setWindowTitle("Spirate Game");
}

Board::Board()
{
    initboard();
}

Board::~Board()
{
    delete scene;
    delete view;
}

void Board::inittimer()
{
    timer=new QTimer;
    connect(timer,SIGNAL(timeout()), scene, SLOT(advance()));
    timer->start(1000 / 33);
}

void Board::initenemy(Spirate *player)
{
    for (int i = 0; i < ENEMYNUM; ++i) {
        Enemy *enemy = new Enemy(player);
        enemy->setPos(::sin((i * 6.28) / ENEMYNUM) * 300,
                      ::cos((i * 6.28) / ENEMYNUM) * 300);
        scene->addItem(enemy);
        enemylist.push_back(enemy);
    }
}

void Board::show()
{
    initboard();
    inittimer();
    initplayer();
    initenemy(player);
    for(auto i:enemylist)
    {
        i->isstart=true;
    }
    view->show();
}

void Board::initplayer()
{
    player=new Player;
    player->setPos(-400,-300);
    scene->addItem(player);
    player->setFlag(QGraphicsItem::ItemIsFocusable);
    player->setFocus();
}

void Board::keyPressEvent(QKeyEvent( *key))
{
    player->update(key);

}

