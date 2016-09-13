/*
 * Author: April Wensel
 
 */


void setup() {
  size(600, 600);
  background(176, 196, 222);
}

void draw() {
  int spacing = 5;
  int border = 10;
  int squareDimension = (600 - 2 * border - 5 * spacing) / 5;
  noStroke();    
  
  for(int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      int xOffset = (int) random(-5, 5);
      int yOffset = (int) random(-5, 5);
      fill(decideColor());
      
      rect(border + i * (spacing + squareDimension) + xOffset, 
           border + j * (spacing + squareDimension) + yOffset, 
           squareDimension, 
           squareDimension);
    }
  }

  noLoop();
}

color decideColor() {
  color defaultColor = color(25, 25, 112, 180);
  color lightColor = color(0, 0, 225, 180); 
  
  int randomIndex = (int) random(0, 25);
  
  if(randomIndex < 5) {
    return lightColor;
  } else {
    return defaultColor;
  }
}