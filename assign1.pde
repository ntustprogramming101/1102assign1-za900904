PImage sky;
PImage soil;
PImage groundhog;
PImage life;
PImage soldier;
PImage robot;

int piece =80;
int robotX =floor(random(160,600));
int robotY = piece*2+floor(random(4))*piece;
int soldierX;
int soldierY = piece*2+floor(random(4))*piece;
int laserSpeedX = robotX +25;
int laserX;
int laserY = robotY + 37;

void setup() {
  size(640, 480, P2D);
  // Enter Your Setup Code Here

  sky = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  groundhog = loadImage("img/groundhog.png");
  life = loadImage("img/life.png");
  soldier = loadImage("img/soldier.png");
  robot = loadImage("img/robot.png");

}

void draw() {
  // Enter Your Code Here

//background
  image(sky,0,0); 
  image(soil,0,piece*2); //sky
  
  noStroke();
  fill(124,204,25);
  rect(0,145,640,15); //grass
  
  fill(255,255,0);
  ellipse(590,50,130,130);
  fill(253,184,19);
  ellipse(590,50,120,120); //sun
  
  image(groundhog,280,80); //groundhog

  soldierX =soldierX +2;
  if(soldierX >width){
    soldierX=-piece;
  }
  image(soldier,soldierX,soldierY); //soldier

  image(robot,robotX,robotY); //robot

//laser
  laserSpeedX = laserSpeedX-2;
  laserX = laserX+2;  
  

  fill(255,0,0);
  ellipse(laserSpeedX,laserY,10,10);
  ellipse(laserSpeedX+laserX,laserY,10,10);
  rect(laserSpeedX,laserY-5,laserX,10);

  if(laserX >=30){
    laserX = 30;
  }
  
  
  if(laserSpeedX <robotX-2 * piece){
    laserSpeedX = robotX +25;
    laserX = 0;
  }
  
//life
  image(life,10,10);
  translate(70,0);
  image(life,10,10);
  translate(70,0);
  image(life,10,10);
}
