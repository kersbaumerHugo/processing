import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Circulos_coloridos extends PApplet {

float circleX,circleY,circleS,circleR,circleG,circleB;

public void setup() {
  
background (0);
  circleX = width/2;
  circleY = height/2;
 
}
public void draw() {
  
  fill(circleR,circleG,circleB);
  ellipse(circleX, circleY, circleS, circleS);
  circleX = random(width);
circleY = random(height);
circleR = random(255);
circleG = random(255);
circleB = random(255);
circleS = random(1,48);
}

  public void settings() {  size(640, 320); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Circulos_coloridos" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
