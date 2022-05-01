class Pad {
  float x;
  float y;
  float w;
  Pad(float tempY, float tempX, float tempW) {
    y = tempY;
    x = tempX;
    w = tempW;
  }

  void display(float R, float G, float B) {
    stroke(0);
    fill(R, G, B);
    rectMode(CENTER);
    rect(x, y, w, 60);
  }
  void move2(float v) {
    if (mousePressed && mouseButton == LEFT && y <= height -30) { 
      y = y + v;
    }  
    if (mousePressed && mouseButton == RIGHT && y >= 30) { 
      y = y - v;
    }
  }

  void move1(float v) {
    if (keyPressed && key == 's' && y <= height -30) { 
      y = y + v;
    }  
    if (keyPressed && key == 'w' && y >= 30) { 
      y = y - v;
    }
  }
}
