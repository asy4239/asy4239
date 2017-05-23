PImage img; 
float size =100;
int angle =0;

void setup() {  
 fullScreen();
 img = loadImage("Ferrari FXXK, FXX, and 599XX.jpg"); 
}
void draw() {
  
  
  
  
  
  imageMode(CENTER);
  background(192);
 image(img, width/2, height/2, 1920*(size/100), 1080*(size/100));
 if (keyPressed) {
 if ((key == 'a') || (key == 'A')) {
 tint(255, 0, 0);
 }
 else if ((key == 's') || (key == 'S')) {
 tint(0, 255, 0);
  }
  else if ((key == 'd') || (key == 'D')) {
 tint(0, 0, 255);
  }
  else if ((key == 'g') || (key == 'G')) {
 noTint();
  }
 else if ((key == 'f') || (key == 'F')) {
 tint(0, 255, 255);
  }
 }
  if (keyPressed && (key==CODED)) {
  if (keyCode == UP) {
    size +=2;
   }
  if (keyCode == DOWN) {
    size -=2;
  }
    if (keyCode == RIGHT) {
      background(192);
      translate(width/2, height/2);
      rotate(radians(angle));
      angle +=2;
      image(img, 0, 0, width, height);
    }
    if (keyCode == LEFT) {
      background(192);
      translate(width/2, height/2);
      rotate(radians(angle));
    angle -=2;
    image(img, 0, 0, width, height);
   
   }
}
  }