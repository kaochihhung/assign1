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
int bg1x=0; // backage1


  
void setup () {
  size(640,480);
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  enemyImg=loadImage("img/enemy.png");
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");
    
}

void draw() {
  image(bg1Img,bg1x+=1,0);
  image(bg2Img,bg1x-640,0);
  image(fighterImg,580,240);
  image(hpImg,20,20);
  image(treasureImg,treasureX,treasureY);
  image(enemyImg,enemyx+=5,300);
  
  enemyx %= 640; 
  bg1x %= 640;


  // hp length  
  colorMode(RGB);
  fill(255,0,0);
  rect(25,25,hplength,20);
  
 }

void draw() {
  image(bg1Img,bg1x+=3,0);
  image(bg2Img,bg2x+=3,0);
  image(fighterImg,580,240);
  image(hpImg,20,20);
  image(treasureImg,treasureX,treasureY);
  image(enemyImg,enemyx+=4,300);
  
  enemyx %= 640; 
  bg1x %= 640;
  bg2x %= 640;

    
  colorMode(RGB);
  fill(255,0,0);
  rect(25,25,hplength,20);
  
 }
