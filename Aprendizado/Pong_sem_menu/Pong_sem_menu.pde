Bolinha b;
Pad p1;
Pad p2;
void setup() {
  size(1280, 720);
 b = new Bolinha(3, 3);
 p1 = new Pad(height/2, 20, 20);
 p2 = new Pad(height/2, width - 20, 20);
}

void draw() {
  background(255);//ok
  b.display(255,0, 0, 255, 0, 0, 24);//ok
  b.move(1);//ok
  b.colisaoParede();//ok
  b.colisaopad1(p1.y, p1.x);
  b.colisaopad2(p2.y, p2.x);
  p1.move1(4);//ok
  p2.move2(4);//ok
  p1.display(0, 255, 0);//ok
  p2.display(0, 255, 0);//ok
  b.pont1();
  b.pont2();
  textSize(50);
  fill(0);
  text(round(b.p1), 50, 50, 100);
  text(round(b.p2), width-70, 50, 100);
  textSize(100);
  b.fim(1);
}
/* menu,inserir nome dos players,guardar resultados,recorde de tempo(temporizador)
,resultado de capote, marcar vitórias por capote





*/