class Seleccion3
{
  int x,y,lx,ly,xpress,ypress,largo,alto,xn,yn;
  String leyenda, press; 
  color col,col1,col2;
  
  Seleccion3(int x_, int y_, int lx_, int ly_,int xpress_, int ypress_,  String leyenda_,String press_, color col_, color col1_,int largo_, int alto_, color col2_,int xn_, int yn_)
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
    col2=col2_;
    xn=xn_;
    yn=yn_;
  }
  
  void display ()
  {
    
    pushMatrix();
    translate(x,y);
    noStroke();
    fill(col1);
    imageMode(CENTER);
    image(F2,0,0);
    popMatrix();
    
    pushMatrix();
    translate(lx,ly-15);
    noStroke();
    fill(col2);
    rectMode(CENTER);
    rect(0,0,largo,alto);
    popMatrix();
    
   pushMatrix();
    translate(lx,ly);
    fill(col);
    textFont(OldPress);
    textAlign(CENTER);
    text(leyenda,0,0);
    popMatrix();
    
    pushMatrix();
    translate(xpress,ypress-15);
    noStroke();
    fill(col2);
    rectMode(CENTER);
    rect(0,0,largo-940,alto);
    popMatrix();
    
    pushMatrix();
    translate(xpress,ypress);
    fill(col);
    textFont(OldPress);
    textAlign(CENTER);
    text(press,0,0);
    popMatrix();
    
    pushMatrix();
    translate(450,665);
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect(0,0,alto,alto);
    popMatrix();
    
    fill(col2);
    triangle(475,640,475,690,425,665);
    
    pushMatrix();
    translate(750,665);
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect(0,0,alto,alto);
    popMatrix();
    
    fill(col2);
    triangle(725,640,725,690,775,665);
    
    
    switch (Fondo)
    {
      case 0:
      pushMatrix();
      translate(x,y);
      scale(0.5);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F3,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Isla Central",xn,yn);
      break;
      case 1:
      pushMatrix();
      translate(x,y);
      scale(0.5);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F4,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Playa Baja",xn,yn);
      break;
      case 2:
      pushMatrix();
      translate(x,y);
      scale(0.5);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F5,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Playa Media",xn,yn);
      break;
      case 3:
      pushMatrix();
      translate(x,y);
      scale(0.5);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F6,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Playa Destierro",xn,yn);
      break;
      case 4:
      pushMatrix();
      translate(x,y);
      scale(0.5);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F7,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Playa Alta",xn,yn);
      break;
      case 5:
      pushMatrix();
      translate(x,y);
      scale(0.5);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F2,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Cueva",xn,yn);
      break;
      }
      
      for(Particulas p:particulas)
      {
        p.display();
        p.movimiento();
        p.regreso();
      }
    
    
    
  }
}