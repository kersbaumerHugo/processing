class Bubble{ //class é uma união de data e functions
  float x;
  float y;
  float k;
  float d;
 Bubble(float tempD){ //constructor "setup" para objetos
  x = random(width);
  y = random(640);
  k = random(1,3);
  d = tempD;
 }
 void ascend(){
    y= y-k;
    x = x +random(-1,1);
    if(x>=width+d/2){
    x=0-d/2;
    }
    if(x<0-d/2){
     x=width+d/2; 
    }
 }
 void display(){
  stroke(0);
  ellipse(x,y,d,d);
 }
  void top(){
  if (y<=0-d/2){
    y=height+d/2;
  }
 }
 void pop(){
   if (dist(mouseX,mouseY,x,y) < d/2){
    d = 0; 
   }
 }

void randomColors() { //altera as cores de um objeto de maneira que sejam randomicas
  float R, G, B;
  R = random(255);
  B = random(255);
  G = random(255);
  fill(R, G, B);
}
}
