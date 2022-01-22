class Particle {
  
  float x,y;
  float r;
  
  Particle() {
    x=random(width);
    y=random(height);
    r=random(10,30);
  }
  
  Particle(float thisx, float thisy, float thisr) {
    x=thisx;
    y=thisy;
    r=thisr;
  }
  
  boolean overlaps(Particle other)  {    //other ist ein weiteres Particle, das hier abgefragt wird -> Kommunikation zwischen Objekten
    float d=dist(x,y,other.x,other.y);
    if(d < r + other.r) {
      return true;
    }
    else {
      return false;
    }
  }
  
  void display() {
    stroke(255);
    strokeWeight(2);
    noFill();
    ellipse(x,y,r*2,r*2);
  }
}
