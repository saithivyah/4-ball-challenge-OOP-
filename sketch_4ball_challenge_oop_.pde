Fourball b[];
void setup()
{
  size(500,500);
 b=new Fourball[4];
 for(int i=0;i<4;i++)
 {
   b[i]=new Fourball(0,((i+1)*height/5),i+1);
 }
}
void draw()
{
  for(int i=0;i<4;i++)
  {
    b[i].speed();
    b[i].display();
  }
  if(b[0].xpos >width)
  {
    exit();
  }
}
class Fourball{
  float xpos;
  float ypos;
  float xspeed;


Fourball(float x,float y,float s)
{
  this.xpos=x;
  this.ypos=y;
  this.xspeed=s;
}
void speed()
{
  this.xpos=this.xpos+this.xspeed;
}
void display()
{
  ellipse(this.xpos,this.ypos,25,25);
}
}
