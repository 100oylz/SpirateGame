#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include<board.h>
QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    Board *board;
private slots:
    void start();
    void exit();
private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
