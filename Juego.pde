class Juego {

  Minim minim;
  AudioPlayer victory;
  AudioPlayer gameover;
  AudioPlayer background;
  AudioPlayer firebackground;
  AudioPlayer tAxe;
  AudioPlayer hAxe;
  AudioPlayer hAxe1;
  AudioPlayer tFire;
  AudioPlayer hFire;
  AudioPlayer risa;
  AudioPlayer victoria;

  Fondo fondo;
  Protagonista prota;
  Hades hades;
  FireBall fireball;
  Axe axe;
  Estados estado;
  int score, vidas;
  int pantalla;
  boolean go, back, ganaste;
  PFont f;

  Juego( PApplet a ) {




    minim = new Minim(a);
    victory = minim.loadFile("victory.mp3", 1000);
    gameover = minim.loadFile("gameover.wav", 1000);
    background = minim.loadFile("backgroundgame.mp3", 1000);
    firebackground = minim.loadFile("firebackground.mp3", 1000);

    victoria = minim.loadFile("victoria.mp3");

    hAxe = minim.loadFile("hitaxe.mp3", 1000);
    hAxe1 = minim.loadFile("hitaxe1.mp3", 1000);

    hFire = minim.loadFile("hitfireball.wav", 1000);
    risa = minim.loadFile("risa.mp3", 1000);


    fondo = new Fondo();
    prota = new Protagonista();
    hades = new Hades();
    fireball = new FireBall(a);
    axe = new Axe(a);
    estado = new Estados();
    vidas = 5;
    score = 0;
    pantalla = 0;
    go = false;
    ganaste = false;
    back = false;
    f = createFont( "Early GameBoy", 20 );
  }

  void actualizarJuego() {
    //println(pantalla);
    if ( pantalla == 1 ) {   
      prota.actualizar();
      hades.actualizar();
      fireball.disparar();
      fireball.posX( hades );
      axe.actualizar();
      axe.posX( prota );
    }
  }

  void dibujarJuego() {


    if ( vidas == 4 ) { 
      risa.play();
    } else risa.pause();
    if ( score == 2 || vidas == 0 ) {
      background.pause();
      background.rewind();
      firebackground.pause();
      risa.rewind();
    }

    estado.tutorial();
    pantalla = 0;

    if ( pantalla == 0 && go == true ) {

      background.play();
      firebackground.play();

      pantalla = 1;
      back = false;
      fondo.dibujar();
      prota.dibujar();
      hades.dibujar();
      fireball.dibujar();
      axe.dibujar();
      textSize( 50 );
      textFont( f );
      text( vidas, 70, height/2 );
      text( "vidas", 70, height/2-30 );
      text( score, width-70, height/2 );
      text( "score", width-70, height/2-30 );
      victory.rewind();
      gameover.rewind();
      hAxe1.rewind();
      victoria.rewind();
    }
    if ( score == 2 ) {

      victory.play();
      victoria.play();
      pantalla = 3;
      estado.victory();
      go = false;
      if ( pantalla == 3 && mousePressed ) {  
        ganaste = true;
      }
    } else victoria.pause(); 
    victoria.pause();
    if ( vidas == 0 ) {
      gameover.play();
      hAxe1.play();

      pantalla = 4;
      estado.gameOver();
      go = false;
    }
    if ( pantalla > 2 ) {
      reciclar();
    }
  }

  float pantallaX() {
    return pantalla;
  }

  boolean getGanaste() {
    return ganaste;
  }


  void puntos() {

    //-----------------------------------------------------------------------------------------------------------------

    float d = dist( axe.xAxe(), axe.yAxe(), hades.getX(), hades.getY() );
    if ( d < 40 ) {  
      hAxe.play();
      hAxe.rewind();
      score ++;
      axe.reciclar();
    }

    //-----------------------------------------------------------------------------------------------------------------

    float d1 = dist( fireball.fx(), fireball.fy(), prota.px(), prota.py() );
    if ( d1 < 40 ) {
      hFire.play();
      hFire.rewind();
      vidas --;
      fireball.reciclar();
      //println(vidas);
    }
  }

  void tecleoJuego() {
    if ( pantalla == 1 ) {
      prota.mover();
      axe.mover();
    }
    if ( keyCode == ENTER ) { 
      go = true;
    }
    if ( key == 'r' ) { 
      back = true;
    }
  }

  void reciclar() {
    if ( back == true ) {
      pantalla = 0;
      score = 0;
      vidas = 5;
      go = false;
      axe.reciclar();
      prota.reciclar();
      hades.reciclar();
      fireball.reciclar();
      //back = false;
    }
  }

  void reStart() {
    pantalla = 0;
    ganaste = false;
    score = 0;
    vidas = 5;
    go = false;
    axe.reciclar();
    prota.reciclar();
    hades.reciclar();
    fireball.reciclar();
    
    victory.pause();
    gameover.pause();
    background.pause();
    firebackground.pause();
    victoria.pause();
    hAxe.pause();
    hAxe1.pause();
    hFire.pause();
    risa.pause();
  }
}
