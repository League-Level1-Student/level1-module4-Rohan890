int posX = 50;
int posY = 30;
int birdYVelocity = 10;
int gravity = 1;
int pipeX = 270;
int upperPipeHeight = (int) random(75, 350);
int pipeGap = 160;
int pipe2height = 500-(pipeGap+upperPipeHeight);
int pipeY = upperPipeHeight+ pipeGap;
int score = 0;

void draw() { 
  pipeX -= 2;
  birdYVelocity = birdYVelocity-gravity;
  posY = posY - birdYVelocity;
  background(135, 206, 250);
  fill(223, 240, 0);
  stroke(255, 255, 255);
  ellipse(posX, posY, 40, 40);
  fill(0, 255, 0);
  rect(pipeX, 0, 50, upperPipeHeight);
  fill(0, 255, 0);
  rect(pipeX, pipeY, 50, pipe2height);
  teleport();
  if (intersectsPipes() == true) {
    exit();
  }
  
text(score, 350, 50);

}

void setup() {
  size(400, 500);
}
void keyPressed() {
  if (keyCode == 38) {
    birdYVelocity = 15;
  }
}
void teleport() {
  if (pipeX == -50) {
    pipeX = width;
    upperPipeHeight = (int) random(80, 200);
    pipe2height = 500-(pipeGap+upperPipeHeight);
    pipeY = upperPipeHeight+ pipeGap;
    score = score+1;
  }
}
boolean intersectsPipes() { 
  if (posY < upperPipeHeight && posX > pipeX && posX < (pipeX+50)) {
    return true;
  } else if (posY>pipeY && posX > pipeX && posX < (pipeX+50)) {
    return true;
  } else { 
    return false;
  }
}
