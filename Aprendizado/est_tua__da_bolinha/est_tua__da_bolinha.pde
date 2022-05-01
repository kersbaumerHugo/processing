float circleX;
//permite dois valores true e false
boolean going = false;
void setup(){
size(640,360);  
}

void draw(){
  background(255);
  fill(0);
  stroke(0,255,0);
  ellipse(circleX,100,24,24);
  if (going){
    circleX = circleX +1;
  }
}  
//evento do botão do mouse
void mousePressed(){
  //inverte o efeito o que permite que permite que a bola pare e volte 
  going = !going;
    
}