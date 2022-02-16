class Juego{
  
  
  SoundFile victory;
  //SoundFile musica;
  //SoundFile laser;
  //SoundFile musica;
  //SoundFile laser;
  //SoundFile musica;
  //SoundFile laser;
  //SoundFile musica;
  
  Fondo fondo;
  Protagonista prota;
  Hades hades;
  FireBall fireball;
  Axe axe;
  Estados estado;
  int score, vidas;
  int pantalla;
  boolean go, back;
  PFont f;
  
  Juego(PApplet a){
    
    victory = new SoundFile(a, "victory.mp3");
    //musica = new SoundFile(a, "musica fondo.mp3");
    //laser = new SoundFile(a, "disparo.wav");
    //musica = new SoundFile(a, "musica fondo.mp3");
    //laser = new SoundFile(a, "disparo.wav");
    //musica = new SoundFile(a, "musica fondo.mp3");
    
    fondo = new Fondo();
    prota = new Protagonista();
    hades = new Hades();
    fireball = new FireBall();
    axe = new Axe();
    estado = new Estados();
    vidas = 5;
    score = 0;
    pantalla = 0;
    go = false;
    back = false;
    f = createFont( "Early GameBoy", 20 );
  }
  
  void actualizarJuego(){
    println(pantalla);
    if( pantalla == 1 ) {   
      prota.actualizar();
      hades.actualizar();
      fireball.disparar();
      fireball.posX( hades );
      axe.actualizar();
      axe.posX( prota );
      }
  }
  
  void dibujarJuego(){
    
    estado.tutorial();
    pantalla = 0;
    
    if( pantalla == 0 && go == true ){
        pantalla = 1;
        back = false;
        fondo.dibujar();
        prota.dibujar();
        hades.dibujar();
        fireball.dibujar();
        axe.dibujar();
        textSize( 50 );
        textFont( f );
        text( vidas, 70 ,height/2 );
        text( "vidas", 70, height/2-30 );
        text( score, width-70, height/2 );
        text( "score", width-70, height/2-30 );
        }
    if( score == 5 ){
      pantalla = 3;
      estado.victory();
      victory.play();
      go = false;
    }
    if( vidas == 0 ){
      pantalla = 4;
      estado.gameOver();
      go = false;
    }
    if( pantalla > 2 ){
      reciclar();
    }
    
  }
  
  float pantallaX(){
    return pantalla;
  }
  
  void puntos(){
    
//-----------------------------------------------------------------------------------------------------------------
    
    float d = dist( axe.xAxe(), axe.yAxe(), hades.getX(), hades.getY() );
    if( d < 40 ){
      score ++;
      axe.reciclar();
    }
    
//-----------------------------------------------------------------------------------------------------------------
    
    float d1 = dist( fireball.fx(), fireball.fy(), prota.px(), prota.py() );
    if( d1 < 40 ){
      vidas --;
      fireball.reciclar();
      println(vidas);
    }    
   }
  
  void tecleoJuego(){
   if( pantalla == 1 ){
    prota.mover();
    axe.mover();
   }
   if( keyCode == ENTER ){ go = true; }
   if( key == 'r' ){ back = true; }
      
  }
  
  void reciclar(){
    if ( back == true ){
    pantalla = 0;
    score = 0;
    vidas = 5;
    go = false;
    axe.reciclar();
    prota.reciclar();
    hades.reciclar();
    fireball.reciclar();
    victory.stop();
    //back = false;
    }
  }

}
