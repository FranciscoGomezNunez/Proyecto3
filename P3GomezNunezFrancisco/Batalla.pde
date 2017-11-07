class Batalla
{
  int x1,y1,x2,y2,lx,ly,xpress,ypress,largo,alto;
  String leyenda, press; 
  color col,col1;
  
  Batalla(int x1_, int y1_, int x2_, int y2_, int lx_, int ly_,int xpress_, int ypress_,  String leyenda_,String press_, color col_, color col1_,int largo_, int alto_)
  {
    x1=x1_;
    y1=y1_;
    x2=x2_;
    y2=y2_;
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
  
  void display ()
  {
    
    switch (fon)
    {
      case 0:
      pushMatrix();
      translate(lx,ly);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F3,0,0);
      popMatrix();
      for(Pajaritos p:pajaritos)
      {
        p.display();
        p.movimiento();
        p.regreso();
      }
      S1.play();
      break;
      case 1:
      pushMatrix();
      translate(lx,ly);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F4,0,0);
      popMatrix();
      for(Particulas v:particulas2)
      {
        v.display();
        v.movimiento();
        v.regreso();
      }
      S2.play();
      break;
      case 2:
      pushMatrix();
      translate(lx,ly);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F5,0,0);
      popMatrix();
      for(Particulas v:particulas2)
      {
        v.display();
        v.movimiento();
        v.regreso();
      }
      S3.play();
      break;
      case 3:
      pushMatrix();
      translate(lx,ly);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F6,0,0);
      popMatrix();
      for(Pajaritos p:pajaritos)
      {
        p.display();
        p.movimiento();
        p.regreso();
      }
      S4.play();
      break;
      case 4:
      pushMatrix();
      translate(lx,ly);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F7,0,0);
      popMatrix();
      S5.play();
      for(Particulas v:particulas2)
      {
        v.display();
        v.movimiento();
        v.regreso();
      }
      break;
      case 5:
      pushMatrix();
      translate(lx,ly);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(F2,0,0);
      popMatrix();
      for(Particulas p:particulas)
      {
        p.display();
        p.movimiento();
        p.regreso();
      }
      S6.play();
      break;
      }
    
    switch (P1)
    {
      case 0:
      pushMatrix();
      translate(x1,y1);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Alberti,0,0);
      ataque1=45;
      popMatrix();
      break;
      case 1:
      pushMatrix();
      translate(x1,y1);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Ferka,0,0);
      ataque1=40;
      popMatrix();
      break;
      case 2:
      pushMatrix();
      translate(x1,y1);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Armando,0,0);
      ataque1=32;
      popMatrix();
      break;
      case 3:
      pushMatrix();
      translate(x1,y1);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Barbara,0,0);
      ataque1=30;
      popMatrix();
      break;
      case 4:
      pushMatrix();
      translate(x1,y1);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Matias,0,0);
      ataque1=25;
      popMatrix();
      break;
      case 5:
      pushMatrix();
      translate(x1,y1);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Tania,0,0);
      ataque1=38;
      popMatrix();
      break;
      
    }
    
    switch (P2)
    {
      case 0:
      pushMatrix();
      translate(x2,y2);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Alberti,0,0);
      ataque2=45;
      popMatrix();
      break;
      case 1:
      pushMatrix();
      translate(x2,y2);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Ferka,0,0);
      ataque2=40;
      popMatrix();
      break;
      case 2:
      pushMatrix();
      translate(x2,y2);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Armando,0,0);
      ataque2=32;
      popMatrix();
      break;
      case 3:
      pushMatrix();
      translate(x2,y2);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Barbara,0,0);
      ataque2=30;
      popMatrix();
      break;
      case 4:
      pushMatrix();
      translate(x2,y2);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Matias,0,0);
      ataque2=25;
      popMatrix();
      break;
      case 5:
      pushMatrix();
      translate(x2,y2);
      noStroke();
      fill(col1);
      imageMode(CENTER);
      image(Tania,0,0);
      ataque2=38;
      popMatrix();
      break;
      
    }
    
    
    noStroke();
    fill(255,50,0,200);
    rectMode(CENTER);
    rect(50,height/2,30,PH1*1.5);
    rect(1150,height/2,30,PH2*1.5);
    
    
    noStroke();
    fill(col1);
    rectMode(CENTER);
    rect (width/4,670,60,30);
    rectMode(CENTER);
    rect (3*(width/4),670,60,30);
    rect(width/4,40,60,30);
    rect (3*(width/4),40,60,30);
    
    pushMatrix();
    translate(width/4,680);
    fill(col);
    textFont(TW,24);
    textAlign(CENTER);
    text(PH1,0,0);
    popMatrix();
    
    text("J1",width/4,50);
    
    pushMatrix();
    translate(3*(width/4),680);
    fill(col);
    textFont(TW,24);
    textAlign(CENTER);
    text(PH2,0,0);
    popMatrix();
    
    text("J2",3*(width/4),50);
    
    
  }
  
  void lucha()
  {
    int evento;
    TurnoInd=(Turno%2);
    switch(TurnoInd)
    {
      case 0:
      frameRate(30);
      ind.displayj1();
      evento=(floor(random(10)));
      keyPressed();
      if ((key=='v')||(key=='V')){
        if(evento==0){
          frameRate(1);
          eventos.display1();
          PH1+=18;}
        if(evento==1){
          frameRate(1);
          eventos.display2();
          PH1+=26;}
        if(evento==2){
          frameRate(1);
          eventos.display3();
          PH1+=32;}}
      keyPressed();
      if((key=='v')||(key=='V'))
      {
        PH2-=ataque1;
        if (PH2<=0)
        {
          Pantalla+=1;
        }
        else{Turno+=1; }
      }
      TurnoInd=(Turno%2);
      break;
    case 1:
    frameRate(30);
      ind.displayj2();
      evento=(floor(random(10)));
      keyPressed();
      if ((key=='b')||(key=='B')){
        if(evento==0){
          frameRate(1);
          eventos.display1();
          PH2+=18;}
        if(evento==1){
          frameRate(1);
          eventos.display2();
          PH2+=26;}
        if(evento==2){
          frameRate(1);
          eventos.display3();
          PH2+=32;}}
      keyPressed();
      if ((key=='b')||(key=='B'))
      {
        PH1-=ataque2;
        if (PH1<=0)
        {
          Pantalla+=2;
        }
        else{
        Turno+=1;
        }
      }
      TurnoInd=(Turno%2);
      break;
    }
    
    
  }
}