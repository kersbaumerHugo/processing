float circleX = 0, Xspeed = 1, circleY = 0, Yspeed = 1;


void setup() {
  size(640, 360);
}

void draw() {
  background(50);
  fill(circleX, circleY, 0);
  ellipse(circleX, circleY, 24, 24);
  circleX = circleX + Xspeed;
  circleY = circleY + Yspeed;

  if (circleX >= width || circleX <= 0) {
    Xspeed = -Xspeed;
  }

  if (circleY >= height || circleY <= 0) {
    Yspeed = -Yspeed;
  }
}