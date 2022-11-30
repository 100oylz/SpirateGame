#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    connect(ui->start,SIGNAL(clicked()),this,SLOT(start()));
    connect(ui->exit,SIGNAL(clicked()),this,SLOT(exit()));
    setWindowTitle("Spirate Game");

}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::start()
{
    board =new Board();
    board->show();
}



void MainWindow::exit()
{
    close();
}
