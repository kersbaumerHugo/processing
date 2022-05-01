
void setup(){
 size(640,360); 
}

void draw(){
  background(0);
  if(mouseX < width/2 && mouseY < height/2){
    rect(0,0,width/2,height/2);
  }else if (mouseX > width/2 && mouseY < height/2){
    rect(width/2,0,width,height/2);
  }else if (mouseX < width/2 && mouseY > height/2){
    rect(0,height/2,width/2,height);
  }else if(mouseX > width/2 && mouseY > height/2){
    rect(width/2,height/2,width,height);
  }
}