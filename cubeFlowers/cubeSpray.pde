void setup() {
  size (750, 750);
  background(0);
  noFill();
  noLoop();
}

void draw() {
  translate(375, 375);
  spinFlower(95, 45, 5, 25, 5.0);
}

void spinFlower(int flowerSize, int flowerSpread, int cubeSize, int spinReps, float rotAngle) {
  for (int i=0; i < spinReps; i++) {
    cubeFlower(flowerSize, flowerSpread, cubeSize);
    rotate(cos(rotAngle));
  }
}

void cubeFlower(int flowerSize, int flowerSpread, int cubeSize) {
  
  float angle = 0;
  for (int x = 0; x < flowerSize; x += flowerSpread) {
    for (int y = 0; y < flowerSize; y += flowerSpread) {
      
      rotate(cos(angle));
      cubeSpray(x, y, cubeSize, 35, 5, 0.5, 0.15);
      
    }
  }

}

void cubeSpray(int initX, int initY, int cubeSize, int cubeSpread, int sprayReps, float skew, float fadeRate) {

  int x = initX, y = initY;
  float angle = 0;

  float weight = 255;

  int i = 0;
  while (i < sprayReps) {
    
    stroke(weight);
    rotate(cos(angle));
    rect(x, y, cubeSize, cubeSize);
    x += (cubeSpread * skew);
    y += (cubeSpread * (1 - skew));
    
    i++;
    weight *= (1 - fadeRate);

  }


}
