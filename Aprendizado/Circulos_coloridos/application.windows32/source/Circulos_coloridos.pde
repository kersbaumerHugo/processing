float circleX,circleY,circleS,circleR,circleG,circleB;

void setup() {
  size(640, 320);
background (0);
  circleX = width/2;
  circleY = height/2;
 
}
void draw() {
  
  fill(circleR,circleG,circleB);
  ellipse(circleX, circleY, circleS, circleS);
  circleX = random(width);
circleY = random(height);
circleR = random(255);
circleG = random(255);
circleB = random(255);
circleS = random(1,48);
}