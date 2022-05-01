float x, y, w = 20, r, g, b;

void setup() {
  size (640, 360);
  background(0);
  for (x = 0; x <= width; x = x +w) {
    for (y = 0; y <= height; y = y + w) {
      r = random(255);
      g = random(255);
      b = random(255);
      fill(r, g, b);
      rect(x, y, w, w);
    }
  }
}

void draw() {
  


  }