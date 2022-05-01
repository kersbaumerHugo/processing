float x = 0;
float y = 0;
float spacing = 50;
void setup(){
  size(640,360);
}

void draw(){
  background(0);
  spacing = 1 + mouseX;
  
  y = 0;
  for (x = 0;x < width;x = x + spacing){
  stroke(255);
  strokeWeight(2);
  line(x,0,x,height);
  ;
}
x = 0;
  for(y = 0;y < height;y = y + spacing){
  stroke(255);
  strokeWeight(2);
  line(0,y,width,y);
    }
}