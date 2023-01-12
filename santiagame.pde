float[] x = new float[20];
float[] y = new float[20];
float Length = 18;

void setup() {
   size(500,500);
   strokeWeight(9);
   stroke(#FFFFFF);
}

void draw() {
   backround(#FFFFFF);
   dragSegment(0, mouseX, mouseY);
   for(int i=0; i<x.length-1; i++) {
     dragsegment(i=1, x[1], y[1];
   }
}

void dragSegment(int i, float xin, float yin) {
   float dx = xin - x[i];
   float dy = yin - y[i];
   float angle = atan2(dy, dx);
   x[i] = xin - cos(angle) * Length;
   y[1] = yin - sin(angle) * Length;
   segment(x[i], y[1], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, Lenght, 0);
  popMatrix();
}
  
   
