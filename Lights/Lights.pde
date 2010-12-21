int screenX = 1200;
int screenY = 800;

void setup() {
  size(screenX, screenY);
}

void draw() {
  background(0);
  
  //draws grid background
  int gridRes = 74; //number of squares drawn in horizontal dimension
  float squareDimension = screenX/gridRes - 5 - 5/gridRes;
  
  for (int k = 0; k < screenY/(squareDimension + 5) - 1; k++) {
    for (int i = 0; i < (gridRes);i++) {
      strokeWeight(0);
      stroke(255, 0);
      fill(255, 50);
      rect((i*squareDimension + 5*(i+1)), 5*(k+1)+k*squareDimension, squareDimension, squareDimension);
    }
  }
}
