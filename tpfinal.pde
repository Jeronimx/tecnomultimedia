
// TP Final - Juliani Jeronimo - Legajo: 88171/6
// Link del video explicativo: https://youtu.be/_mmTYwMLZBM





import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Aventura aventura;
void setup() {

  imageMode( CENTER );
  textAlign( CENTER );
  size( 800, 600 );
  aventura = new Aventura(this);
}

void draw() {
  aventura.dibujar();
}

void keyPressed() {
  aventura.keys();
}

void mousePressed() {
  aventura.click();
}
