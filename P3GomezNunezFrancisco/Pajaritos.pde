class Pajaritos
{
  float x,y,c;
  
  Pajaritos(float x_, float y_,float c_)
  {
    x=x_;
    y=y_;
    c=c_;
  }
  
  void display()
  {
    imageMode(CENTER);
    image(B3,x,y);
  }
  
  void movimiento()
  {
    
    x+=1;
    

  }
  
  void regreso()
  {
    
    if (x>=width)
    {
      x=0;
    }
  }
}