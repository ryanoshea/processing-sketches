int width = 50;  // line width
int height = 100;  // line height
float leftBound = 100 + (0.5 * width);  // horizontal position of leftmost line
int upperBound = 0 - height;  // starting vertical position
int spacing = 50;  // horizontal spacing

int horizy = 550;

void setup() {
  size(500, 500);
}

void draw() { 
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

void diagonals(int width, int height, float leftBound, int upperBound, int spacing) {
  line(leftBound, upperBound, leftBound - width, upperBound + height); // left line
  line(leftBound + (1 * spacing), upperBound, leftBound + (1 * spacing) - width, upperBound + height);
  line(leftBound + (2 * spacing), upperBound, leftBound + (2 * spacing) - width, upperBound + height);
  line(leftBound + (3 * spacing), upperBound, leftBound + (3 * spacing) - width, upperBound + height);
  line(leftBound + (4 * spacing), upperBound, leftBound + (4 * spacing) - width, upperBound + height);
  line(leftBound + (5 * spacing), upperBound, leftBound + (5 * spacing) - width, upperBound + height);
  line(leftBound + (6 * spacing), upperBound, leftBound + (6 * spacing) - width, upperBound + height);  // right line
}
