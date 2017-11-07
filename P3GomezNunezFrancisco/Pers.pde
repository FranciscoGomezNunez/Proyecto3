class Pers
{
  int x1,y,x2,x3,x4,x5,x6;
  Pers(int x1_, int y_,int x2_,int x3_,int x4_, int x5_,int x6_ )
  {
    x1=x1_;
    y=y_;
    x2=x2_;
   
    x3=x3_;
   
    x4=x4_;
   
    x5=x5_;
   
    x6=x6_;
   
  }
  
  void display ()
  {
    imageMode(CENTER);
    image(X1,x1,y);
    image(X2,x2,y);
    image(X3,x3,y);
    image(X4,x4,y);
    image(X5,x5,y);
    image(X6,x6,y);
    
  }
  
  
  void movimiento()
  {
    x1+=1;
    x2+=1;
    x3+=1;
    x4+=1;
    x5+=1;
    x6+=1;
    
  }
  
  void regreso()
  {
    if(x1>=1200)
    {
      x1=0;
    }
    if(x2>=1200)
    {
      x2=0;
    }
    if(x3>=1200)
    {
      x3=0;
    }
    if(x4>=1200)
    {
      x4=0;
    }
    if(x5>=1200)
    {
      x5=0;
    }
    if(x6>=1200)
    {
      x6=0;
    }
  }
}