int radius = 15;
int direction = 1;
int direction2 = 0;
int score = 0;
int rad = 20;       
int live = 3;
int stage = 0;
float xpos, ypos;    
float xpos1, ypos1;  
float xpos2, ypos2;  
float xpos3, ypos3;  
float xpos4, ypos4;  
float xspeed = 5.8;  
float yspeed = 5.2; 
int xdirection = 1; 
int ydirection = 1; 
int xdir = 1; 
int ydir = 1; 
int xdire = 1; 
int ydire = 1; 
int xdirec = 1; 
int ydirec = 1; 
int xdirect = 1; 
int ydirect = 1; 
float x = 250;
float y = 250;
int cx1= (int) random (480) + 10;
int cy1= (int) random (50) + 10;
int cx2= (int) random (50) + 10;
int cy2= (int) random (50) + 10;
int cx3= (int) random (250) + 10;
int cy3= (int) random (200) + 10;
int cx4= (int) random (80) + 10;
int cy4= (int) random (480) + 10;
int cx5= (int) random (480) + 10;
int cy5= (int) random (500) + 10;
PImage help;


void setup() {
  size(500, 500);
  ellipseMode(RADIUS);
  noStroke();
  frameRate(30);
  xpos = 180;
  ypos = 100;
  xpos1 = 200;
  ypos1 = 400;
  xpos2 = 100;
  ypos2 = 400;
  xpos3 = 300;
  ypos3 = 245;
  xpos4 = 450;
  ypos4 = 100;
  help = loadImage("help.png");
}



void draw() {
  
  if((mousePressed == true) && stage == 0 && (mouseX > 220 && mouseX < 280 && mouseY > 200 && mouseY < 230)){//changes stage to game screen stage
    stage = 1; // makes stage value 1
   }
   
   if((mousePressed == true) && stage == 0 && (mouseX > 220 && mouseX < 280 && mouseY > 250 && mouseY < 280)){//changes stage to game screen stage
    stage = 2; // makes stage value 1
   }
   
   if((mousePressed == true) && stage == 2 && (mouseX > 400 && mouseX < 500 && mouseY > 440 && mouseY < 500)){//changes stage to game screen stage
    stage = 0; // makes stage value 1
   }
   
   if(stage == 2){
     background(255,0,0);
     image(help,0,0);
     fill(255,255,0);
     textSize(50);
     text("Help",195,130);
     fill(255,255,0);
     textSize(30);
     text("Home",400,470);
   }
  
  if(stage == 0){
  background(0,0,255);
  fill(255,255,0);
  textSize(50);
  text("Pac Man",150,175);
  fill(255,0,0);
  textSize(30);
  text("Play",220,230);
  fill(255,0,0);
  textSize(30);
  text("Help",215,280);
  }
  
  if(stage == 1){
  background(255);
  fill (0, 175, 255);
  smooth ();
  noStroke();
  render();
  fill(255, 255, 0);
  ellipse(cx1, cy1, 10, 10);
  ellipse(cx2, cy2, 10, 10);
  ellipse(cx3, cy3, 10, 10);
  ellipse(cx4, cy4, 10, 10);
  ellipse(cx5, cy5, 10, 10);
  textSize(20);
  text("Score: " +score, 400, 20);
  text("Lives: " + live, 300,20);

  if (dist(x, y, cx1, cy1)<20) {
    cx1 = 1000;
    cy1 = 1000;
    score = score +1;
  }
  if (dist(x, y, cx2, cy2)<20) {
    cx2 = 1000;
    cy2 = 1000;
    score = score +1;
  }
  if (dist(x, y, cx3, cy3)<20) {
    cx3 = 1000;
    cy3 = 1000;
    score = score +1;
  }
  if (dist(x, y, cx4, cy4)<20) {
    cx4 = 1000;
    cy4 = 1000;    
    score = score +1;
  }
  if (dist(x, y, cx5, cy5)<20) {
    cx5 = 1000;
    cy5 = 1000;
    score = score +1;
  }
  
  if (dist(xpos,ypos,x,y)<20) {
    live = live - 1;
    x = 250;
    y = 250;
  }
  if (dist(xpos1,ypos1,x,y)<20) {
    live = live - 1;
     x = 250;
    y = 250;
  }
  if (dist(xpos2,ypos2,x,y)<20) {
    live = live - 1;
     x = 250;
    y = 250;  
}
  if (dist(xpos3,ypos3,x,y)<20) {
    live = live - 1;
     x = 250;
    y = 250;
  }
  if (dist(xpos4,ypos4,x,y)<20) {
    live = live - 1;
     x = 250;
    y = 250;
  }
  
  
  
  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );


  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  
  
  
  xpos1 = xpos1 + ( xspeed * xdir );
  ypos1 = ypos1 + ( yspeed * ydir );


  if (xpos1 > width-rad || xpos1 < rad) {
    xdir *= -1;
  }
  if (ypos1 > height-rad || ypos1 < rad) {
    ydir *= -1;
  }
  
  xpos2 = xpos2 + ( xspeed * xdire );
  ypos2 = ypos2 + ( yspeed * ydire );


  if (xpos2 > width-rad || xpos2 < rad) {
    xdire *= -1;
  }
  if (ypos2 > height-rad || ypos2 < rad) {
    ydire *= -1;
  }
  
  xpos3 = xpos3 + ( xspeed * xdirec );
  ypos3 = ypos3 + ( yspeed * ydirec );


  if (xpos3 > width-rad || xpos3 < rad) {
    xdirec *= -1;
  }
  if (ypos3 > height-rad || ypos3 < rad) {
    ydirec *= -1;
  }
  
  xpos4 = xpos4 + ( xspeed * xdirect );
  ypos4 = ypos4 + ( yspeed * ydirect );


  if (xpos4 > width-rad || xpos4 < rad) {
    xdirect *= -1;
  }
  if (ypos4 > height-rad || ypos4 < rad) {
    ydirect *= -1;
  }
  

  fill (255,0,0);
  ellipse(xpos, ypos, rad, rad);
  ellipse(xpos1, ypos1, rad, rad);
  ellipse(xpos2, ypos2, rad, rad);
  ellipse(xpos3, ypos3, rad, rad);
  ellipse(xpos4, ypos4, rad, rad);

  if (key == CODED) {
    if (keyCode == LEFT) {
      x = x - 5;
      direction = -1;
      direction2 = 0;
    } else if (keyCode == RIGHT) {  
      x = x + 5;
      direction = 1;
      direction2 = 0;
    } else if (keyCode == UP) {
      y = y - 5;
      direction = 0;
      direction2 = -1;
    } else if (keyCode == DOWN) { 
      y = y + 5;
      direction = 0;
      direction2 = 1;
    }}
    if(y <= 2){ 
     y = 2; 
     }
     if(y >= 498){ 
     y = 498; 
     }
     if(x > 498){ 
     x= 498; 
     }
     if(x < 2){ 
     x = 2; 
     }
     
  if(score == 1){
     xspeed = xspeed + 0.01;  
     yspeed = + yspeed + 0.01; 
  }   
  
  if(score == 2){
     xspeed = xspeed + 0.05;  
     yspeed = + yspeed + 0.05; 
  }   
  
  if(score == 4){
     xspeed = xspeed + 0.1;  
     yspeed = + yspeed + 0.1; 
  }   
     
  if(live == 0){
    noLoop();
    background(0);
    textSize(40);
    text("YOU LOSE",150,240);
  }

  if (score == 5) {
    noLoop();
    background(0);
    textSize(50);
    text("You Win", 140, 240);
  }  

  }
}







void render() {
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( direction == -1) { 
        rotate(PI);
      }
      if ( direction2 == 1) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -1) { 
        rotate( PI + HALF_PI );
      }
      arc(0, 0, radius, radius, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
      popMatrix();
      // mouth movement //
    }
  }
}   