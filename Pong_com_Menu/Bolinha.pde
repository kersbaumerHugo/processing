class Bolinha {
  Pad Pad1 = new Pad(height/2, 10, 30);
  Pad Pad2 = new Pad(height/2, width - 30, 30);
  Menu me = new Menu();
  boolean Over;
  String J1;
  String J2;
  float P1x;
  float P1y;
  float P2x;
  float P2y;
  float x;
  float y;
  float v;
  float v2;
  float p1;
  float p2;
  float P1w;
  float P2w;
  float D2;
  float D1;
  boolean P;
  Bolinha(float tempv, float tempv2) {
    x = height/2;
    y = width/2;
    v = tempv;
    v2 = tempv2;
    P1w = Pad1.w;
    P2w = Pad2.w;  
    p1 = 0;
    p2 = 0;
    J1 = me.J1;
    J2 = me.J2;
    Over = false;
  }

  void display(float r, float g, float b, float R, float G, float B, float dia) {
    //stroke(r, g, b);
    //fill(R, G, B);
   // ellipse(x, y, dia, dia);
    imageMode(CENTER);
    image(tB,x,y,dia,dia);
  }
  void move (float k) { //movimentação da bolinha
    x = x+v*k;
    y = y+v2*k;
  }
  void colisaoParede() { // Inversão de direção
    if (y >= height || y <= 0) {
      v2=-v2;
    }
  }
  void colisaopad2(float px, float py) {
    P2x = py;
    P2y = px;
    D2 = dist(x, y, P2x, P2y);
    if (D2 <= P2w) {
      v = -v *1.1;
    }
  }
  void colisaopad1(float px, float py) {
    P1x = py;
    P1y = px;
    D1 = dist(x, y, P1x, P1y);
    if (D1 <= P1w) {
      v = -v*1.1;
    }
  }
  void pont2() {
    if (x >=width) {
      x = width/2;
      y = height/2;
      v =3;
      v2=3;
      move(-1);
      p1++;
    }
  }
  void pont1() {
    if (x <= 0) {
      x = width/2;
      y = height/2;
      v=3;
      v2=3;
      move(-1);
      p2++;
    }
  }
  void fim(float Win,String J1,String J2,boolean P) {
    if (p1 >= Win && !P) {
      textMode(CENTER);
      text(J1 +" Ganhou!!!!", 150, height/2, 100);
      v =0;
      v2 = 0;
      Over = true;
    }
    if (p2 >= Win && !P) {
      textMode(CENTER);
      text( J2 +" Ganhou!!!!", 150, height/2, 100);
      v =0;
      v2 = 0;
      Over = true;
    }
  }
}
