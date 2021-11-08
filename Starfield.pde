Particle[]bob=new Particle[20];
OddballParticle bobby=new OddballParticle();
void setup()
{
  size(500,500);
  for(int i=0; i<bob.length; i++)
  {
    bob[i]=new Particle();
  }
  bob[0]= new OddballParticle();
}
void draw()
{
  background(189);
  for(int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class Particle
{
  double X;
  double Y;
  int Color;
  double Angle;
  double Speed;
  Particle()
  {
    X=250;
    Y=250;
    Angle=Math.random()*2*Math.PI;
    Speed=Math.random()*20;
    Color=color((int)Math.random()*256,(int)Math.random()*256,(int)Math.random()*256);
  }
  void move()
  {
    X=X+Math.cos(Angle);
    Y=Y+Math.sin(Angle);
  }
  void show()
  {
    fill(Color);
    ellipse((int)X,(int)Y, 20,20);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    X=23;
    Y=357;
    Angle=Math.random()*2*Math.PI;
    Color=color(212,123,14);
  }
  void move()
  {
    X=X+5;
    Y=Y-5;
  }
  void show()
  {
    fill(Color);
    rect((int)X,(int)Y,14,23);
  }
}
