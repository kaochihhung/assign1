/* 
  assign1
  Kaochihhung
  2015.10.08
*/

PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;

int hplength=floor(random(200));
int treasureX=floor(random(640));
int treasureY=floor(random(50,450));

int enemyx=0;
int bg1x; // backpage1
int bg2x; // backpage2
  
void setup () {
  size(640,480);
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  enemyImg=loadImage("img/enemy.png");
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");
  
  bg1x=640;
  bg2x=0;
   
}

void draw() {
  image(bg1Img,bg1x-640,0);
  image(bg2Img,bg2x-640,0);
  image(fighterImg,580,240);
  image(hpImg,20,20);
  image(treasureImg,treasureX,treasureY);
  image(enemyImg,enemyx+=5,300);
  bg1x += 1;
  bg1x %= 1280;
  bg2x +=1;
  bg2x %=1280;
  
  enemyx %= 640; 
  
  // hp length  
  colorMode(RGB);
  fill(255,0,0);
  rect(25,25,hplength,20);
  
}
