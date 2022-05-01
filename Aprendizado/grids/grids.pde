float x = 0;
float y = 0;
float spacing = 50;
void setup(){
  size(640,360);
}

void draw(){
  background(0);
  spacing = 1 + mouseX;
  x = 0;
  y = 0;
  while (x < width){
  stroke(255);
  strokeWeight(2);
  line(x,0,x,height);
  x = x + spacing;
}
  while(y < height){
  stroke(255);
  strokeWeight(2);
  line(0,y,width,y);
  y = y + spacing;
  }
}