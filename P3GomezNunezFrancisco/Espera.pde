class Espera
{
  float x,y,c;
  
  Espera(float x_, float y_,float c_)
  {
    x=x_;
    y=y_;
    c=c_;
  }
  
  void display()
  {
    imageMode(CENTER);
    image(B2,x,y);
  }
  
  void movimiento()
  {
    float cj;
    y+=2;
    cj=sin(c);
    x+=cj;

  }
  
  void regreso()
  {
    if (y>=height)
    {
      y=0;
    }
    
    if (x>=width)
    {
      x=0;
    }
  }
}