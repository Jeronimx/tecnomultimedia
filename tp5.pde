import processing.sound.*;
Juego juego;
void setup(){
  imageMode( CENTER );
  textAlign( CENTER );
  size( 800,600 );
  juego = new Juego(this);
}

void draw(){
  juego.actualizarJuego();
  juego.dibujarJuego();
  juego.puntos();
}

void keyPressed(){
  juego.tecleoJuego();
}
