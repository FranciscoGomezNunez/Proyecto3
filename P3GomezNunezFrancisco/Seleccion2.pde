class Seleccion2
{
  int x,y,lx,ly,xpress,ypress,largo,alto,xn,yn,xp,yp,xa,ya;
  String leyenda, press; 
  color col,col1,col2;
  
  Seleccion2(int x_, int y_, int lx_, int ly_,int xpress_, int ypress_,  String leyenda_,String press_, color col_, color col1_,int largo_, int alto_, color col2_,int xa_, int ya_,int xn_, int yn_,int xp_, int yp_)
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
    xa=xa_;
    ya=ya_;
    xn=xn_;
    yn=yn_;
    xp=xp_;
    yp=yp_;
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
    
    
    switch (Personaje2)
    {
      case 0:
      pushMatrix();
      translate(x,y);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Alberti,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Alberti",xn,yn);
      textFont(TW,48);
      text("Ataque = 45",xa,ya);
      text("Vida = 180",xp,yp);
      break;
      case 1:
      pushMatrix();
      translate(x,y);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Ferka,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Ferka",xn,yn);
      textFont(TW,48);
      text("Ataque = 40",xa,ya);
      text("Vida = 200",xp,yp);
      break;
      case 2:
      pushMatrix();
      translate(x,y);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Armando,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Armando",xn,yn);
      textFont(TW,48);
      text("Ataque = 32",xa,ya);
      text("Vida = 250",xp,yp);
      break;
      case 3:
      pushMatrix();
      translate(x,y);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Barbara,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Bárbara",xn,yn);
      textFont(TW,48);
      text("Ataque = 30",xa,ya);
      text("Vida = 26",xp,yp);
      break;
      case 4:
      pushMatrix();
      translate(x,y);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Matias,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Matías",xn,yn);
      textFont(TW,48);
      text("Ataque = 25",xa,ya);
      text("Vida = 320",xp,yp);
      break;
      case 5:
      pushMatrix();
      translate(x,y);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Tania,0,0);
      popMatrix();
      
      fill(col);
      textFont(OldPress2,100);
      textAlign(CENTER);
      text("Tania",xn,yn);
      textFont(TW,48);
      text("Ataque = 38",xa,ya);
      text("Vida = 220",xp,yp);
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