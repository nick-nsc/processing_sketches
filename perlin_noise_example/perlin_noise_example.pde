float step = 0;

void setup() {
  size(600,400);
  //frameRate(10);
}

void draw() {
  background(0);
  fill(255);
  
  step = step + .01; //the lower the smoother
  
  float x = noise(step); //perlin noise just outputs number from 0 to 1
  x = map(x,0,1,0,width);
  ellipse(x,height/2,50,50);
}
