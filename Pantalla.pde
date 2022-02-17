class Pantalla {
  int num = 18;
  PImage[] foto = new PImage[num];
  PImage start, creditos;
  PFont f1, f2, f3;


  Pantalla() {

    for ( int i = 0; i < num; i++ ) {
      foto[i] = loadImage( "Screen_" + i + ".png" );
    }

    start = loadImage( "Starting.png" );
    creditos = loadImage( "Creditos.png" );

    f1 = createFont( "Early GameBoy", 40);
    f2 = createFont( "The Centurion", 80);
    f3 = createFont( "PR Viking", 80);
  }

  void start() {
    image(start, width/2, height/2);
    textFont( f3 );
    fill(  #3B2643, random( 200, 255 ) );
    text( "Valhalla ArraY", width/2, height/2-150 );

    fill(255);
    textFont( f1 );
    text("Start", width/2, height/2+150);

    fill(255);
    textFont( f1 );
    text("Credits", width/2, height/2+230);
  }

  void creditos() {
    image(creditos, width/2, height/2);
  }

  void pantalla(int a, int b) {
    image(foto[a], width/2, height/2);
    image(foto[b], width/2, height/2);
  }
}
