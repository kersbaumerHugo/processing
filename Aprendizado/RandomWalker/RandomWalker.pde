Walker w;
void setup(){
  size(640,360);
  w = new Walker();
}

void draw(){
w.render();
w.step();
}