import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class VerticalDrop extends PApplet {

int width = 50;  // line width
int height = 100;  // line height
float leftBound = 100 + (0.5f * width);  // horizontal position of leftmost line
int upperBound = 0 - height;  // starting vertical position
int spacing = 50;  // horizontal spacing

int horizy = 550;

public void setup() {
  size(500, 500);
}

public void draw() { 
  background(0);
  
  //leftBound = mouseX;
  //upperBound = mouseY;
  
  diagonals(width, height, leftBound, upperBound, spacing);
  
  line(0, horizy, 499, horizy);
  
  stroke(255);
  strokeWeight(5);
  smooth();
  
  upperBound = upperBound + 5;
  horizy = horizy - 5;
  
  if (upperBound > 500) {
    upperBound = 0 - height;
  }
  if (horizy < -50) {
    horizy = 550;
  }
}

public void diagonals(int width, int height, float leftBound, int upperBound, int spacing) {
  line(leftBound, upperBound, leftBound - width, upperBound + height); // left line
  line(leftBound + (1 * spacing), upperBound, leftBound + (1 * spacing) - width, upperBound + height);
  line(leftBound + (2 * spacing), upperBound, leftBound + (2 * spacing) - width, upperBound + height);
  line(leftBound + (3 * spacing), upperBound, leftBound + (3 * spacing) - width, upperBound + height);
  line(leftBound + (4 * spacing), upperBound, leftBound + (4 * spacing) - width, upperBound + height);
  line(leftBound + (5 * spacing), upperBound, leftBound + (5 * spacing) - width, upperBound + height);
  line(leftBound + (6 * spacing), upperBound, leftBound + (6 * spacing) - width, upperBound + height);  // right line
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#DFDFDF", "VerticalDrop" });
  }
}
