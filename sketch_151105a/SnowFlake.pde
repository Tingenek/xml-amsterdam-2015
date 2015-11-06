class SnowFlake {
//Individual snowflake
float xPosition; 
float yPosition; 
int flakeSize;
int direction;

int minFlakeSize = 1;
int maxFlakeSize = 5;
//Constructor

SnowFlake() {
    flakeSize = round(random(minFlakeSize, maxFlakeSize));
    xPosition = random(0, width);
    yPosition = random(0, height);
    direction = round(random(0, 1));
}

void update() {
    ellipse(xPosition, yPosition, flakeSize, flakeSize);
    //make them drift
    
    if(direction == 0) {
      xPosition += map(flakeSize, minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition -= map(flakeSize, minFlakeSize, maxFlakeSize, .1, .5);
    }
     //fall
     
    yPosition += flakeSize + direction; 
    
    //edge check
    
    if(xPosition > width + flakeSize || xPosition < -flakeSize || yPosition > height + flakeSize) {
      xPosition = random(0, width);
      yPosition = -flakeSize;
    }
    
  }  
  
}