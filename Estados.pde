class Estados {
  PImage tutorial, victory, gameover;

  Estados() {

    tutorial = loadImage( "tutorial.jpg" );
    victory = loadImage( "victory.jpg" );
    gameover = loadImage( "gameover.jpg" );
  }

  void tutorial() {

    image( tutorial, width/2, height/2 );
  }

  void victory() {
    image( victory, width/2, height/2 );
  }

  void gameOver() {
    image( gameover, width/2, height/2 );
  }
}
