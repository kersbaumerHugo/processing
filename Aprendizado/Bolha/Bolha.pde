Bubble b0;
Bubble b1;
Bubble[] bubbles = new Bubble [1000]; //isso é uma array serve para fazer multiplos objetos a partir de um unico
int i;
int total =0;
void setup() {
    size(640, 360,P2D);
  for(i =0;i<bubbles.length;i++){
  bubbles[i] = new Bubble(random(20,50)) ;
  }
}

void draw() {
  background(0,0,255);
  fill(180,180,255);
  for(i =0;i<total;i++){
  bubbles[i].display();
  bubbles[i].ascend();
  bubbles[i]. top();
  
  }
  if(random(100)<=5){
  total=total+1;
  }
}

void mousePressed(){
  for(i =0;i<total;i++){
  bubbles[i].pop();
}
}
