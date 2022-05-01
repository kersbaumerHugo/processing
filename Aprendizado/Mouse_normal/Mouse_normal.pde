void setup() {
  size(640, 360);
  background(50);
}
void draw()
{
  background(50);
  fill(150);
  stroke(255);
  rectMode(CENTER);
//MouseX e MouseY são variáveis internas
  rect(mouseX,mouseY, 100, 50);
}