class Bubble {

  float x = random(width);
  float y = random(height);
  int diameter=50;
  float yspeed = random(1, 2.5);
  int r=255;
  int g=255;
  int b=255;
  boolean trig = true;

  Bubble() {
  }

  Bubble(int thisDiameter) {
    diameter = thisDiameter;
  }

  void ascend() {
    if (trig) {
      y -= yspeed;
      x += random(-1, 1);
    }
  }

  void display() {
    if (trig) {
      noStroke();
      fill(r, g, b, 120);
      ellipse(x, y, diameter, diameter);
    }
  }

  void top() {
    if (y <= 0-diameter/2) {
      y = height+diameter/2;
    }
  }

  void pop() {
    float x1 = mouseX;
    float y1 = mouseY;
    if (dist(x1, y1, x, y)<diameter/2) {
      trig = false;
    }
  }

  void brush() {
    if (key=='a') {
      float x1 = mouseX;
      float y1 = mouseY;
      if (dist(x1, y1, x, y)<diameter/2) {
        r=0;
        g=0;
        b=255;
      }
    }
    if (key=='s') {
      float x1 = mouseX;
      float y1 = mouseY;
      if (dist(x1, y1, x, y)<diameter/2) {
        r=255;
        g=0;
        b=0;
      }
    }
    if (key=='d') {
      float x1 = mouseX;
      float y1 = mouseY;
      if (dist(x1, y1, x, y)<diameter/2) {
        r=0;
        g=255;
        b=0;
      }
    }
  }
}
