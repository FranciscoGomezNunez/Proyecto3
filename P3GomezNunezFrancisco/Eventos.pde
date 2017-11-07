class Eventos
{
  int x,y,largo,alto;
  color col,col1;
  Eventos(int x_,int y_,int largo_,int alto_,color col_,color col1_)
  {
    x=x_;
    y=y_;
    largo=largo_;
    alto=alto_;
    col=col_;
    col1=col1_;
  }
  
  void display1 ()
  {
    noStroke();
    fill(col);
    rectMode(CENTER);
    rect(x,y,largo,alto);
    fill(col1);
    textFont(TW,30);
    textMode(CENTER);
    text("Evento aleatorio: PH +18",x,y+10);
  }
  
  void display2()
  {
    noStroke();
    fill(col);
    rectMode(CENTER);
    rect(x,y,largo,alto);
    fill(col1);
    textFont(TW,30);
    textMode(CENTER);
    text("Evento aleatorio: PH +26",x,y+10);
  }
  
  void display3()
  {
    noStroke();
    fill(col);
    rectMode(CENTER);
    rect(x,y,largo,alto);
    fill(col1);
    textFont(TW,30);
    textMode(CENTER);
    text("Evento aleatorio: PH +32",x,y+10);
  }
  
  
}