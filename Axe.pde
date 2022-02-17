class Axe {

  Minim minim;
  AudioPlayer tAxe;

  float x, y;
  float x1, y1, tam;
  int Num = 0;
  boolean disparo;
  PImage[] axe = new PImage[8];
  Protagonista prota;

  Axe(PApplet a) {

    minim = new Minim(a);
    tAxe = minim.loadFile("throwaxe.mp3", 1000);

    prota = new Protagonista();
    x = width/2;
    y = height-10;
    for ( int i = 0; i < 8; i++ ) {
      axe[i] = loadImage( "axe_" + i + ".png" );
      axe[i].resize( 95, 95 );
    }
    x1 = x;
    y1 = y;
    tam = 50;
  }

  void actualizar() {
    if ( x > width ) { 
      x = width;
    }
    if ( x < 0 ) { 
      x = 0;
    }
  }

  void dibujar() {

    if ( disparo == true ) {
      image( axe[Num], x, y);
      Num = (Num+1)%axe.length;
      pushStyle();
      noStroke();
      fill( 255, 0);
      ellipse( x1, y1, tam, tam );
      popStyle();
      x1 = x;
      y1 = y;
      y -= 30;
    }

    if ( y < 0 ) {
      reciclar();
    }
  }

  void mover() {
    //if( keyCode == RIGHT ){ x += 15; }
    //if( keyCode == LEFT ){ x -= 15; }
    if ( key == 'a' ) { 
      disparo = true; 
      tAxe.play();
      tAxe.rewind();
    }
  }

  void reciclar() {
    y = height-10;
    disparo = false;
  }

  float xAxe() {
    return x;
  }
  float yAxe() {
    return y;
  }

  void posX( Protagonista prota ) {
    x = prota.px1();
  }
}
