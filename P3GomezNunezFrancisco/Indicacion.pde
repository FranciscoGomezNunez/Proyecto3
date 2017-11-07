class Indicacion
{
  int x,y;
  color col1,col2;
  String t1,t2;
  
  Indicacion (int x_,int y_, color col1_, color col2_, String t1_, String t2_)
  {
    x=x_;
    y=y_;
    col1=col1_;
    col2=col2_;
    t1=t1_;
    t2=t2_;
  }
  
   void displayj1 ()
  {
    pushMatrix();
    translate(x,y-10);
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect(0,0,400,60);
    popMatrix();
    
    pushMatrix();
    translate(x,y);
    fill(col2);
    textFont(TW,30);
    textAlign(CENTER);
    text(t1,0,0);
    popMatrix();
  }
  
  void displayj2 ()
  {
    pushMatrix();
    translate(x,y-10);
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect(0,0,400,60);
    popMatrix();
    
    pushMatrix();
    translate(x,y);
    fill(col2);
    textFont(TW,30);
    textAlign(CENTER);
    text(t2,0,0);
    popMatrix();
  }
}