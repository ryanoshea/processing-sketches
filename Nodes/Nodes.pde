Node bob = new Node(random(0, 500), random(0, 500));  
Node darryl = new Node(random(0, 500), random(0, 500));

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  smooth();
  
  bob.draw();
  
  darryl.draw();
  darryl.connect(bob);
}

class Node {
  float[] location = new float[2];
  
  Node(float x, float y) {
    location[0] = x;
    location[1] = y;
  }
  
  void draw() {
    strokeWeight(0);
    stroke(0, 0);
    fill(0, 0, 200, 100);
    ellipse(location[0], location[1], 50, 50);
    fill(255);
    ellipse(location[0], location[1], 10, 10);
  }
  
  void connect(Node partner) {
    strokeWeight(5);
    stroke(255);
    line(this.location[0], this.location[1], partner.location[0], partner.location[1]);
  }
}
