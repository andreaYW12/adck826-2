//Andy Warhol insipired pop art 
PFont font1;
PFont font2;
PImage img1;
void setup()
{
  size(800,800,P3D);
  background(#000000);
  font1 = loadFont("LucidaCalligraphy-Italic-48.vlw");
  font2 = loadFont("GeorgiaPro-CondBoldItalic-48.vlw");
  img1 = loadImage("https://www.theartist.me/wp-content/uploads/2019/11/andy-warhol-marilyn-1200x800.jpg");
  tint(255,0, 255);

}

void draw()
{
  frameRate(20);
  shape();
  name("Andi");
  image(img1, 100,50, 400,200);
  blockLondon();
  sphereRotate();
 
 
}


void name(String name)
{
 textFont(font1,random(8,50));
 fill(random(-100,200),random(-100,200),random(-100,200));
 text(name, random(0,800), random(350,450));
}

void shape()
  {
     int fade = 0;
    frameRate(5);
    for(int inc = 0; inc < 160; inc+=20)
    {
      quad(700+inc,100,900,300,600-inc,700,500,400);
      fill(255,0,0,100-fade);
      fade+=10;
    }
  }
void blockLondon()
  {
    textFont(font2,100);
    for(int i = 0; i <60; i++)
    {
      noStroke();
      fill(#19B4CE,60);
      text("LONDON", 400 +i, 200 - i);
    }
    fill(#E86E36);
    text("LONDON", 400, 200);
  }
    
void sphereRotate()
  {
      for(int i = 0; i < 20; i++)
      {  
          fill(#A2EA63);
          stroke(random(0,200),random(0,200),random(0,200));
          translate(100 + i, 600, 0);
          sphere(100);
          rotateX(-190);
      }
  }
 
