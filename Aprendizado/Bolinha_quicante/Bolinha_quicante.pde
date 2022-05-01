float circleX = 0,wn = 1,circleY = 0,wn2 = 1;


void setup(){
  size(640,360);
}

void draw(){
  background(50);
  fill(circleX,circleY,0);
  ellipse(circleX,circleY,24,24);
circleX = circleX + wn;
circleY = circleY + wn2;
  if(circleX >= width){
  wn = -1;
  }
 if(circleX < 1){
  wn = 1;
  
  }
  if(circleY < 1){
  wn2 = 1;
  }
  if(circleY >= height){
  wn2 = -1;
  }
}