int y;
int x;
PImage frog;
void setup() {
  size(1280, 960);
  frog = loadImage("frog.jpg");
}

void draw() {
  loadPixels();
  frog.loadPixels();
  for (int x = 0; x<width; x++) {
    for (int y= 0; y<height; y++) {
    int loc = x+y*width;
    float r = red(frog.pixels[loc]);
    float g = green(frog.pixels[loc]);
    float b = blue(frog.pixels[loc]);
    float d = dist(mouseX,mouseY,x,y);
    pixels[loc] = color(r-d,g-d,b-d);
    }
  }
  updatePixels();
}
