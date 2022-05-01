ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
Menu m;
Bolinha b;
Pad p1;
Pad p2;
char S1;
char S2;
float Vit ;
PImage tB;
int Dia = 36;
boolean t = true;
int xb;
int yb;
void setup() {
  size(1280, 720);
  b = new Bolinha(3, 3);
  p1 = new Pad(height/2, 20, 20);
  p2 = new Pad(height/2, width - 20, 20);
  m = new Menu();
  initLayout();
  tB = loadImage("tB.png");
}
void draw() {

  m.openGame();
  m.opt();
  m.config();
  m.pause();
  println(key);
   if(m.wipeC) 
    for(TEXTBOX t: textboxes){
    t.DRAW();
  }
}
void initLayout(){
  TEXTBOX win = new TEXTBOX();
  win.W = 100;
  win.H = 35;
  win.X = 250;
  win.Y = 390;
textboxes.add(win);
}

void mousePressed(){
    for(TEXTBOX t: textboxes){
     t.PRESSED(mouseX,mouseY); 
    }
}

void keyPressed(){
     for(TEXTBOX t: textboxes){
  if(t.KEYPRESSED(key,keyCode)){
   
    Vit = int(textboxes.get(0).Text);
  }
  }
}





void jogo() {
  loadPixels();
  for (int xb = 0; xb < width;xb++){
   for(int yb = 0; yb< height;yb++){
    float d = dist(xb,yb,width/2,height/2);
     pixels[xb+yb*width] = color(0+1,yb/4+d/8,xb/8+d/8);
   }
  }
      updatePixels();
  b.display(255, 0, 0, 255, 0, 0, Dia);//ok
  if(!m.Gt && !m.wipeInT){
   b.p1 = 0;
   b.p2 = 0;
  }
  if (!m.pause) {
    b.move(1);//ok
    p1.move1(4);//ok
    p2.move2(4);//ok
  } else {
    textSize(80);
    textMode(CENTER);
    text("  Pausado, aperte qualquer\ntecla para continuar.", 100, height/2-60, 100);
  }
  b.colisaoParede();//ok
  b.colisaopad1(p1.y, p1.x);
  b.colisaopad2(p2.y, p2.x);
  p1.display(0, 255, 0);//ok
  p2.display(0, 255, 0);//ok
  b.pont1();
  b.pont2();
  textSize(50);
  fill(0);
  text(round(b.p1), 50, 50, 100);
  text(round(b.p2), width-70, 50, 100);
  textSize(100);
  b.fim(Vit);
}
/* menu,inserir nome dos players,guardar resultados,recorde de tempo(temporizador)
 ,resultado de capote, marcar vitórias por capote
 
 
 
 
 
 */
