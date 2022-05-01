float x, y, w = 20;

void setup() {
  size (640, 360);
  background(0);
 
}

void draw() {
 
  for (x = 0; x <= width; x = x +w) {
    for (y = 0; y <= height; y = y + w) {
      fill(dist(x,y,mouseX,mouseY));
      rect(x, y, w, w);
      
    }
  }

  }