class Historia
{
  int x,y,lx,ly,xpress,ypress,largo,alto;
  String leyenda, press; 
  color col,col1,col2;
  
  Historia(int x_, int y_, int lx_, int ly_,int xpress_, int ypress_,  String leyenda_,String press_, color col_, color col1_,int largo_, int alto_, color col2_)
  {
    x=x_;
    y=y_;
    lx=lx_;
    ly=ly_;
    xpress=xpress_;
    ypress=ypress_;
    leyenda=leyenda_;
    press= press_;
    col= col_;
    col1= col1_;
    col2= col2_;
    largo=largo_;
    alto=alto_;
  }
  
  void display()
  {
    pushMatrix();
    translate(x,y);
    noStroke();
    fill(col1);
    imageMode(CENTER);
    image(F1,0,0);
    popMatrix();
    
    for(Espera p:espera)
      {
        p.display();
        p.movimiento();
        p.regreso();
      }
    
    pushMatrix();
    translate(x,y);
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect(0,0,largo,alto);
    popMatrix();
    
    pushMatrix();
    translate(lx,ly);
    fill(col);
    textFont(OldPress,48);
    textAlign(CENTER);
    text(leyenda,0,0,1000,500);
    popMatrix();
    
    pushMatrix();
    translate(x,ypress);
    noStroke();
    fill(col2);
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