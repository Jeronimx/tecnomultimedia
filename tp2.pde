/*
                            TRABAJO PRACTICO NUMERO 2
                              ANIMACION DE CREDITOS
                              
                         Referencia: Ending de Dragon Ball Z
                         
      El ending era bastante simple asi que decidi ponerle titulo con la fuente de
                       Dragon Ball Z que es muy caracteristico 
                        y alterne los movimientos del texto.
               

*/


//-------------------------------------------------------------------------------------
//                              DECLARAR VARIABLES
PFont FuenteDBZ;
PFont FuenteCreditos;
PImage Nubes;
PImage Dragon;
PImage Planeta;
PImage Dragoncito;
PImage Saludo;
PImage Esfera;
PImage Cola;
PImage Piccoro;
String Titulo, Titulo2;
int CY;
int CY1;
int CX;
String Credito0, Credito1, Credito2, Credito3, Credito4, Credito5,CreditoFinal;




//-------------------------------------------------------------------------------------




void setup(){
  
    
  
//---------------------------------------------------------------------------------------  
//                                  ASIGNACION


  FuenteDBZ = loadFont("SaiyanSans-400.vlw");
  FuenteCreditos = loadFont("AdobeGothicStd-Bold-60.vlw");
  Dragon = loadImage("dragoncito.png");
  Nubes = loadImage("nubes1.png");
  Planeta = loadImage("planetayarbustos.png");
  Dragoncito = loadImage("gran_dragon_by_naironkr_de3b9mb-fullview.png");
  Saludo = loadImage("gohansaludando.png");
  Esfera = loadImage("esferadeldragon1.png");
  Cola = loadImage("ColadeDragon.png");
  Piccoro = loadImage("Piccoroygohan.png");
  Titulo = "Tecn ";
  Titulo2 = "Ball Z";
  CY = height;
  CY1 = height;
  CX = width;
  
  
  Credito0 = "Basado en la historieta Dragon Ball \n crada por \n AKIRA TORIYAMA \n Publicada en Shueisha";
  Credito1 = "Director:        DAISUKE NISHIO \n Planificacion;        KOUZOU MORISHITA \n Supervisor de Produccion:        MATSUJI KISHIMOTO \n Jefe de Diseño:        YUUJI IKEDA \n Jefe de Animacion:        MAEDA MINORU";
  Credito2 = "Musica:        SHUNSUKE KIKUSHI \n Animador:        TAIICHIROU KOBARA \n Animador:        TETSUYA SAEKI \n Animador:        NAOTOSHI SHIDA \n Animador:        AKIO KATADA \n Editor:        SHINICHI FUKUMITSU";
  Credito3 = "Fotografia:        TETSUO OOFUJI \n Fondos:        TATSUO YAMAMOTO \n Fondos:        MUTSUMI MATSUE \n Fondos:        HITOSHI NAGASAKI \n Fondos:        SHINOBU TAKAHASHI \n Supervisor de Animacion:        MASAYUKI UCHIYAMA";
  Credito4 = "Productor Ejecutivo:        YOKO MATSUZAKI \n Productor Ejecutivo:        KOZO MORISHITA \n Productor:        KYOTARO KIMURA \n Productor:        MASATO SEINO";
  Credito5 = " Version para Latinoamerica: \n CLOVERWAY \n \n \n Distribuidor; \n ALEBRIJE ENTRETAIMENT";
  CreditoFinal = " Encoder, Audio y Edicion:             LATINOZKAI \n MATERIAL DE LIBRE DISTRIBUCION SIN FINES \n LUCRATIVOS, NO VENDER NI ALQUILAR.";
  

  
  
//---------------------------------------------------------------------------------------    

  size(600,400);
  textAlign(CENTER);



}


void draw(){

    background(12,83,159);
    fill(0,42,85,CY);
    rect(0,0,600,400);
    fill(0);
    quad(0,0,600,0,600,30,0,30);
    noFill();
   
  
  
//-----------------------------------------------------------------------------------
//                           Background de imagenes

 if(CY < -2450 ){
    
    image(Cola,CX+2500,0);
    
  }
  
  image( Dragon, 0, -14-CY%29);
  image( Nubes, 0, 0);
  image( Planeta, 0, 0);
  image( Dragoncito, -980-CX,0);
 // Dragoncito.resize(380,648);
  CX --;
 
  
  
  
//-----------------------------------------------------------------------------------

//                                 TITULO

  
  textFont(FuenteDBZ);
  textSize(120);
  fill(255,255,0, CY);
  text(Titulo,width/2,height/2);
  fill(255,136,0, CY);
  text("O", width/2+115,height/2+5);
  fill(255,0,0, CY);
  text(Titulo2,width/2, height/2+90);
  
  CY --;
  
//-------------------------------------------------------------------------------------
//                               CREDITOS
  
  if(CY < 20){
    
  fill(255,255,255, CY1);
  textFont(FuenteCreditos);
  textSize(20);
 
  fill(0,0,0,-100+CY1);
  text(Credito0,width/2+2, height/2-40+2);
  fill(255,255,255, -100+CY1);
  text(Credito0,width/2, height/2-40);
  
  CY1 --;
  }
  
  if(CY < -350){
    textSize(20);
    textAlign(CENTER, LEFT); 
    fill(0);
    text(Credito1, width/2+2, -400-CY+2);
    fill(255);
    text(Credito1, width/2, -400-CY);
    
  }
  
  if(CY < -800){
    
    textFont(FuenteCreditos);
    textSize(20);
    textAlign(CENTER, LEFT); 
    fill(0);
    text(Credito2, width/2+2, -850-CY+2);   
    fill(255);
    text(Credito2, width/2, -850-CY);   
  }
  
  if(CY < -1270){
    
    textFont(FuenteCreditos);
    textSize(20);
    textAlign(CENTER, LEFT); 
    fill(0);
    text(Credito3, width/2+2, -1275-CY+2);  
    fill(255);
    text(Credito3, width/2, -1275-CY);  
  }
  
  if(CY <= -1700 &&  CY > -1900){
    
    
    image(Piccoro, 0, 0);


    
    
  }
  
  
  
  
  if( CY < -1700){
    
    
    textFont(FuenteCreditos);
    textAlign(CENTER, LEFT); 
    textSize(20);
    fill(0);
    text(Credito4, width/2+2, -1699-CY+2);
    fill(255);
    text(Credito4, width/2, -1699-CY);
    
  }
  
    if(CY < -2100 && CY > -2500){
    
    image(Saludo,0,0);
    
  }
  
  
  
  
  
  
  if(CY < 2100 || CY < 2200){
    
    textAlign(CENTER, LEFT); 
    textFont(FuenteCreditos);
    textSize(20);
    fill(0);
    text(Credito5, width/2+2, -2150-CY+2);
    fill(255);
    text(Credito5, width/2, -2150-CY);

  }
  
  
 
  
  
  
  
  if(CY < -2500 && CY > -3200 ){
    
    
    textAlign(CENTER, LEFT); 
    textFont(FuenteCreditos);
    textSize(25);
    fill(0);
    text(CreditoFinal, width/2+2, height/2+100+2);
    fill(255);
    text(CreditoFinal, width/2, height/2+100);
    
    
    textSize(18);
    fill(0);
    text("Proyecto creado por:",width/2+2, 30+2);
    fill(255);
    text("Proyecto creado por:",width/2, 30);
    
    
    
    textFont(FuenteCreditos);
    textSize(20);
    fill(0);
    text("Studios",width/2+40+2,127+2);
    fill(255);
    text("Studios",width/2+40,127);
    
    
    
    textSize(23);
    textFont(FuenteDBZ);
    
    fill(255,136,0);
    text("L",156,150); 
    
    fill(255,0,0);
    text("Z",250,150);
    
    image(Esfera,0,0);

    
  }

if(CY < -3200 ){
  
  
  fill(0);
  rect(0,0,600,400);
  fill(255);
  text("FIN", width/2, height/2);
  
}

  
  
//-------------------------------------------------------------------------------------
 
  println( CX );
  print( "  -  " );
  println( CY ); 

  //println( frameCount );
  
  CY --;
  CX --;
  
}
