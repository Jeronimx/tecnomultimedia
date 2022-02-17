class Fondo {

  int Num = 22;
  PImage[] back = new PImage[Num];
  int recorrer = 0;
  PImage piso;

  Fondo() {
    for ( int i = 0; i < Num; i++ ) {
      back[i] = loadImage( "fondo_" + i + ".jpg" );
    }
    piso = loadImage( "fondo2.png" );
  }

  void dibujar() {
    image( back[recorrer], width/2, height/2);
    recorrer = (recorrer+1)%back.length;
    image( piso, width/2, height/2 );
  }
}
