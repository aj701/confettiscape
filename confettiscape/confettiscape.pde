//initial setup variables
int numBoxes=100;
float x[] = new float[numBoxes];
float y[] = new float[numBoxes];
float speeds[] = new float[numBoxes];

void setup() {
  size (1100, 1100, P2D);
  for (int i=0; i < numBoxes; i++) {
    x[i] = random(width);
    y[i] = random(height);
    speeds[i] = random(1, 5);
  }
  
  noStroke();
}

void draw() {
   background(10);
   
   for ( int i = 0; i < numBoxes; i++) {
      fill(random(60), random(60), random(120));
      ellipse( x[i], y[i], random(10, 15), random(15, 40) );
     
      fill(random(255), random(255), random(255), random(255));
      rect( y[i], x[i], random(10, 70), random(10, 70) );
     
      fill(random(255), random(255), random(255), random(60));
      triangle(y[i], x[i], random(10, 20), random(10, 20), random(10, 20), random(10,20));
      
      if ( y[i] > height ) {
        y[i] = 0;
        x[i] = random(width);
        speeds[i] = random(1, 5);
      } else {
        y[i]+=speeds[i];
      }
    }
  }

      

  
