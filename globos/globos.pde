PImage cara; 

class Globo
{ 
  color c;
  float x, y,vx,vy;
  Globo (float _x, float _y){
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5); 
   c=color(random(100,255), random(100,255), random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {      
    fill(c);

    strokeWeight(4);
     
      triangle(x, y+60, x-10,y+70, x+10, y+70);

    strokeWeight(5);
      ellipse(x,y,80,120); 
      imageMode(CENTER);
      image(cara, x,y, 150,140);

  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  cara=loadImage("fileDownloader.jpg");
}

void draw()
{
  background(170,200,150);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
