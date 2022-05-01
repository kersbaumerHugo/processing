void setup() {
  size(640, 360);
}
void draw()
{
  background(50);
  fill(150);
  stroke(255);
  rectMode(CENTER);
  //cria um retângulo que segue o mouse o comando height-mouseY inverte o Yaxis look
  rect(mouseX, height-mouseY, 100, 50);
}