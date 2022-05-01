
void setup() {
  size(640, 360);
}

void draw() {

}

void randomColors() { //altera as cores de um objeto de maneira que sejam randomicas
  float R, G, B;
  R = random(255);
  B = random(255);
  G = random(255);
  fill(R, G, B);
}

void star(float x, float y, float s) {// faz a figura de uma estrela
  beginShape();
  vertex(x*s, (y-50)*s);
  vertex((x+14)*s, (y-20)*s);
  vertex((x+47)*s, (y-15)*s);
  vertex((x+23)*s, (y+7)*s);
  vertex((x+29)*s, (y+40)*s);
  vertex(x*s, (y+25)*s);
  vertex((x-29)*s, (y+40)*s);
  vertex((x-23)*s, (y+7)*s);
  vertex((x-47)*s, (y-15)*s);
  vertex((x-14)*s, (y-20)*s);
  endShape(CLOSE);
}

void pop(){ //estoura a figura de acordo com a posição do mouse
   if (dist(mouseX,mouseY,x,y) < r/2){
    r = 0; 
   }
 }