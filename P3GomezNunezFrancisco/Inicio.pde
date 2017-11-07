class Inicio
{
  int x,y,xpress,ypress;
  String press; 
  color col,col1;
  
  Inicio (int x_, int y_, int xpress_, int ypress_, String press_, color col_, color col1_)
  {
    x=x_;
    y=y_;
    xpress=xpress_;
    ypress=ypress_;
    press= press_;
    col= col_;
    col1=col1_;
  }
  
  void display()
  {
    pushMatrix();
    translate(x,y);
    noStroke();
    fill(col);
    imageMode(CENTER);
    image(F0,0,0);
    popMatrix();
    
    pers.display();
    pers.movimiento();
    pers.regreso();
    
    pushMatrix();
    translate(x,ypress);
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect(0,0,1000,80);
    popMatrix();
    
    pushMatrix();
    translate(xpress,ypress+10);
    fill(col);
    textFont(OldPress);
    textAlign(CENTER);
    text(press,0,0);
    popMatrix();
  }
  
  
}