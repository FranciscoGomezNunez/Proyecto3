import ddf.minim.*;
import ddf.minim.ugens.*;

PImage Alberti, Armando, Barbara, Ferka, Matias, Tania;
PImage F0, F1, F2, F3, F4, F5, F6, F7, F8;
PImage B1,B2,B3;
PImage X1,X2,X3,X4,X5,X6;
int Pantalla;
PFont OldPress, TW, OldPress2;
color C1;
int Personaje=0;
int Personaje2=0;
int Fondo=0;
int nav=0;
int P1;
int P2;
int fon;
int PH1;
int PH2;
int ataque1, ataque2;
int Turno,TurnoInd;

Inicio inicio;
Historia historia;
Seleccion seleccion;
Seleccion2 seleccion2;
Seleccion3 seleccion3;
Batalla batalla;
Indicacion ind;
Ganador1 ganador1;
Ganador2 ganador2;
Eventos eventos;
Pers pers;
Pers pers2;
ArrayList <Espera> espera;
ArrayList <Pajaritos> pajaritos;
ArrayList <Particulas> particulas;
ArrayList <Particulas> particulas2;

Minim minim;
AudioPlayer inicial;
AudioPlayer histo;
AudioPlayer selec;
AudioPlayer S1;
AudioPlayer S2;
AudioPlayer S3;
AudioPlayer S4;
AudioPlayer S5;
AudioPlayer S6;
AudioPlayer win;



void setup()
{
  size (1200, 700);
  background (0);
  C1=color(0, 121, 232, 200);
  Alberti= loadImage("Alberti.png");
  Armando= loadImage("Armando.png");
  Barbara= loadImage("Barbara.png");
  Ferka= loadImage("Ferka.png");
  Matias= loadImage("Matias.png");
  Tania= loadImage("Taniaa.png");
  F0= loadImage("F0.jpg");
  F1= loadImage("F1.jpg");
  F2= loadImage("F2.jpg");
  F3= loadImage("F3.jpg");
  F4= loadImage("F4.jpg");
  F5= loadImage("F5.jpg");
  F6= loadImage("F6.jpg");
  F7= loadImage("F7.jpg");
  B1= loadImage("B1.jpg");
  B2= loadImage("B2.png");
  B3= loadImage("B3.png");
  X1= loadImage("X1.png");
  X2= loadImage("X2.png");
  X3= loadImage("X3.png");
  X4= loadImage("X4.png");
  X5= loadImage("X5.png");
  X6= loadImage("X6.png");
  OldPress= loadFont("OldPress-30.vlw");
  OldPress2= loadFont("OldPress-80.vlw");
  TW= loadFont("Haettenschweiler-48.vlw");
  inicio = new Inicio(width/2, 350, width/2, 650, "Presiona aquí para continuar", #0079E8, color(255, 100));
  historia = new Historia(width/2, 350, width/2, height/2, width/2, 650, "18 guerreros han sido abandonados en un archipielago de islas para que compitan entre ellos, despues de varias semanas de competencia han sido eliminados 12 participantes, por lo tanto, quedan 6. Solamente uno de esos 6 puede llegar a ser el ganador y así obtener 2 millones de pesos. Tú eres uno de los últimos participantes que se mantienen en la competencia, recuerda que tu obligación es ganar, no importa a quien tengas que derrotar.", "Presiona aquí para continuar", 255, C1, 1100, 600,color(0, 121, 232));
  seleccion = new Seleccion(width/2, height/2, width/2, 50, width/2, 680, "Presiona las flechas con el mouse para cambiar de personaje, si deseas elegirlo presiona el rectangulo central.", "Elige jugador 1", 255, color(255, 100), 1100, 60, color(0, 100),width/4,(height/2)-100,3*(width/4),height/2,width/4,(height/2)+100);
  seleccion2 = new Seleccion2(width/2, height/2, width/2, 50, width/2, 680, "Presiona las flechas con el mouse para cambiar de personaje, si deseas elegirlo presiona el rectangulo central.", "Elige jugador 2", 255, color(255, 100), 1100, 60, color(0, 100),width/4,(height/2)-100,3*(width/4),height/2,width/4,(height/2)+100);
  seleccion3 = new Seleccion3(width/2, height/2, width/2, 50, width/2, 680, "Presiona las flechas con el mouse para cambiar de escenario, si deseas elegirlo presiona el rectangulo central.", "Elige el escenario", 255, color(255, 100), 1100, 60, color(0, 100),width/2,150);
  batalla = new Batalla(width/4, height/2, 3*(width/4), height/2, width/2, height/2, width/2, 50, "inserte texto aquí", "inserte texto aqui", color(0), color(255,100), 100, 60);
  ind = new Indicacion(width/2,50,color(255,100),color(0),"Turno Jugador 1: Ataca con V","Turno Jugador 2: Ataca con B");
  ganador1 = new Ganador1(width/2, 350, width/2, height/2, width/2, 550, "El juego ha terminado, gana el jugador 1.¡Felicidades!¡Bien jugado guerrero!", "Presiona el botón de abajo para enfrentar otro duelo.", 255, C1, 1100, 600);
  ganador2 = new Ganador2(width/2, 350, width/2, height/2, width/2, 550, "El juego ha terminado, gana el jugador 2.¡Felicidades!¡Bien jugado guerrero!", "Presiona el botón de abajo para enfrentar otro duelo.", 255, C1, 1100, 600);
  eventos = new Eventos(width/2,height/2,300,60,color(255,200),color(0));
  pers = new Pers(100,80,300,500,700,900,1100);
  pajaritos = new ArrayList<Pajaritos>();
  for(int i=0;i<20;i++)
  {
    pajaritos.add(new Pajaritos(random(width),random(0,100),1));
  }
  espera = new ArrayList<Espera>();//(width/2,20,color(255,255,0));
  for(int i=0;i<20;i++)
  {
    espera.add(new Espera(random(width),random(height),1));
  }
  particulas = new ArrayList <Particulas>();
  for(int i=0;i<20;i++)
  {
    particulas.add(new Particulas (random(1020,1180),random(0,200),random(5,10),color(255,random(255),0,175),-0.5*PI,1));
  }
  
  particulas2 = new ArrayList <Particulas>();
  for(int i=0;i<500;i++)
  {
    particulas2.add(new Particulas (random(width),random(10,height),random(1,5),color(0,random(245,255),random(245,255),50),0.5*PI,1));
  }
  
  minim = new Minim(this);
  inicial = minim.loadFile("Intro.mp3");
  histo = minim.loadFile("historia.mp3");
  selec = minim.loadFile("Finding_the_Balance.mp3");
  S1 = minim.loadFile("S1.mp3");
  S2 = minim.loadFile("S2.mp3");
  S3 = minim.loadFile("S3.mp3");
  S4 = minim.loadFile("S4.mp3");
  S5 = minim.loadFile("S5.mp3");
  S6 = minim.loadFile("S6.mp3");
  win = minim.loadFile("win.mp3");
  
  

  
}

void draw()
{
  frameRate(30);
  background(0);
  switch (Pantalla)
  {
  case 0:
    inicio.display();
    win.rewind();
    win.pause();
    inicial.play();
    
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 100 & mouseX <= 1100) & (mouseY >= 610 & mouseY <= 690)) {
      Pantalla+=1;
      mousePressed=false;
    }
    break;
  case 1:
    historia.display();
    inicial.rewind();
    inicial.pause();
    histo.play();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 100 & mouseX <= 1100) & (mouseY >= 610 & mouseY <= 690)) {
      Pantalla+=1;
      mousePressed=false;
    }
    break;
  case 2:
    seleccion.display();
    histo.rewind();
    histo.pause();
    selec.play();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 420 & mouseX <= 480) & (mouseY >= 635 & mouseY <= 695)) {
      Personaje-=1;
      P1-=1;
      mousePressed=false;
    }
    if (Personaje==(-1))
    {
      Personaje=5;
      P1=5;
    }

    if ((mousePressed==true)&(mouseX >= 720 & mouseX <= 780) & (mouseY >= 635 & mouseY <= 695)) {
      Personaje+=1;
      P1+=1;
      mousePressed=false;
    }
    if (Personaje==6)
    {
      Personaje=0;
      P1=0;
    }

    mousePressed();
    if ((mousePressed==true)&(mouseX >= 520 & mouseX <= 680) & (mouseY >= 635 & mouseY <= 695)) {
      if (P1==0) {
        PH1+=180;
      }
      if (P1==1) {
        PH1+=200;
      }
      if (P1==2) {
        PH1+=250;
      }
      if (P1==3) {
        PH1+=260;
      }
      if (P1==4) {
        PH1+=320;
      }
      if (P1==5) {
        PH1+=220;
      }
      Pantalla+=1;
      mousePressed=false;
    }
    break;
  case 3:
    seleccion2.display();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 420 & mouseX <= 480) & (mouseY >= 635 & mouseY <= 695)) {
      Personaje2-=1;
      P2-=1;
      mousePressed=false;
    }
    if (Personaje2==(-1))
    {
      Personaje2=5;
      P2=5;
    }

    if ((mousePressed==true)&(mouseX >= 720 & mouseX <= 780) & (mouseY >= 635 & mouseY <= 695)) {
      Personaje2+=1;
      P2+=1;
      mousePressed=false;
    }
    if (Personaje2==6)
    {
      Personaje2=0;
      P2=0;
    }

    mousePressed();
    if ((mousePressed==true)&(mouseX >= 520 & mouseX <= 680) & (mouseY >= 635 & mouseY <= 695)) {
      if (P2==0) {
        PH2+=180;
      }
      if (P2==1) {
        PH2+=200;
      }
      if (P2==2) {
        PH2+=250;
      }
      if (P2==3) {
        PH2+=260;
      }
      if (P2==4) {
        PH2+=320;
      }
      if (P2==5) {
        PH2+=220;
      }
      Pantalla+=1;
      mousePressed=false;
    }
    break;
  case 4:
    seleccion3.display();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 420 & mouseX <= 480) & (mouseY >= 635 & mouseY <= 695)) {
      Fondo-=1;
      fon-=1;
      mousePressed=false;
    }
    if (Fondo==(-1))
    {
      Fondo=5;
      fon=5;
    }

    if ((mousePressed==true)&(mouseX >= 720 & mouseX <= 780) & (mouseY >= 635 & mouseY <= 695)) {
      Fondo+=1;
      fon+=1;
      mousePressed=false;
    }
    if (Fondo==6)
    {
      Fondo=0;
      fon=0;
    }

    mousePressed();
    if ((mousePressed==true)&(mouseX >= 520 & mouseX <= 680) & (mouseY >= 635 & mouseY <= 695)) {
      Pantalla+=1;
      mousePressed=false;
    }
    break;
  case 5:
    batalla.display();
    batalla.lucha();
    selec.rewind();
    selec.pause();

    break;
  case 6:
    ganador1.display();
    S1.rewind();
    S1.pause();
    S2.rewind();
    S2.pause();
    S3.rewind();
    S3.pause();
    S4.rewind();
    S4.pause();
    S5.rewind();
    S5.pause();
    S6.rewind();
    S6.pause();
    win.play();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 570 & mouseX <= 630) & (mouseY >= 620 & mouseY <= 680)) {
    Pantalla=0;
    Turno=0;
    PH1=0;
    PH2=0;
    mousePressed=false;
    }
    break;
  case 7:
    ganador2.display();
    S1.rewind();
    S1.pause();
    S2.rewind();
    S2.pause();
    S3.rewind();
    S3.pause();
    S4.rewind();
    S4.pause();
    S5.rewind();
    S5.pause();
    S6.rewind();
    S6.pause();
    win.play();
    mousePressed();
    if ((mousePressed==true)&(mouseX >= 570 & mouseX <= 630) & (mouseY >= 620 & mouseY <= 680)) {
    Pantalla=0;
    Turno=0;
    PH1=0;
    PH2=0;
    mousePressed=false;
    }
  }
}