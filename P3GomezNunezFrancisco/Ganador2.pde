class Ganador2
{
  int x,y,lx,ly,xpress,ypress,largo,alto;
  String leyenda, press; 
  color col,col1;
  
  Ganador2(int x_, int y_, int lx_, int ly_,int xpress_, int ypress_,  String leyenda_,String press_, color col_, color col1_,int largo_, int alto_)
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
    textFont(OldPress2,90);
    textAlign(CENTER);
    text(leyenda,0,0,1000,500);
    popMatrix();
    
    pushMatrix();
    translate(xpress,ypress);
    fill(col);
    textFont(OldPress2,60);
    textAlign(CENTER);
    text(press,0,0);
    popMatrix();
    
    imageMode(CENTER);
    image(B1,width/2,650);
  }

}