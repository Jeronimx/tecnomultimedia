class Protagonista {
  float x, y;
  PImage prota;

  Protagonista() {
    x = width/2;
    y = height-30;
    prota = loadImage( "Protagonista.png" );
    prota.resize( 53, 59 );
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
    image( prota, x, y );
  }

  void mover() {
    if ( keyCode == RIGHT ) { 
      x += 15;
    }
    if ( keyCode == LEFT ) { 
      x -= 15;
    }
  }

  void reciclar() {
    x = width/2;
    y = height-30;
  }

  float px() {
    return x;
  }
  float py() {
    return y;
  }
  float px1() {
    return x;
  }
}
