int bnumber = 300;
Bubble[] bubbles = new Bubble[bnumber];
float total = 200;
int[] n;

void setup() {
  size(640, 360);
  for (int i=0; i<bubbles.length; i++) {
    bubbles[i] = new Bubble(int(random(20,50)));
  }
}

void draw() {
  background(200);
  smooth();
  for (int i=0; i<total; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}

void mousePressed() {
  if (total != bnumber) {
    total += 1;
  }
  println(total);
}

void keyPressed() {
  if (total!=0) {
    total -= 1;
  }
  println(total);
}

/*void mousePressed() {
 for(int i=0; i<bubbles.length; i++) {
 bubbles[i].pop();
 }
 }*/

/*void keyPressed() {
 for(int i=0; i<bubbles.length; i++) {
 bubbles[i].brush();
 }
 }*/
