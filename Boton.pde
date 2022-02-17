class Boton {

  Boton() {
  }

  boolean Izq() {
    boolean r;
    if (mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550) {
      r = true;
    } else { 
      r = false;
    }
    return r;
  }

  boolean Der() {
    boolean r;
    if (mouseX > 600 && mouseX < 750 && mouseY > 500 && mouseY < 550) {
      r = true;
    } else { 
      r = false;
    }
    return r;
  }

  boolean click( float x, float w, float y, float h ) {
    boolean r;
    r = false;
    if ( mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
      r = true;
    }
    return r;
  }
}
