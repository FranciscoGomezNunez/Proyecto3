class Particulas
{
  
  float x,y,t,a,v,dx,dy;
  color col;
  Particulas (float x_, float y_, float t_, color col_, float a_, float v_)
  {
    x=x_;
    y=y_;
    t=t_;
    col=col_;
    a=a_;
    v=v_;
    
  }
  
  void display()
  {
    noStroke();
    fill (col);
    ellipse (x,y,t,t);
  }
  
  void movimiento()
  {
    dx=cos(a)*v;
    dy=sin(a)*v;
    x+=dx;
    y+=dy;
  }
  
  void regreso()
  {
    if (y<0)
    {
      y=200;
    }
    
    if(y>=height)
    {
      y=2;
    }
  }
  
  
}