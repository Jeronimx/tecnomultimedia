class Hades{
  float x,y,vel;
  PImage hades;
  
  Hades(){
    x = width/2;
    y = 0+50;
    vel = random( 5,14 );
    hades = loadImage( "Villano1.png" );
    hades.resize( 53,70 );
  }
  
  void actualizar(){
    x += vel;
    if( x > width ){ x -= 10; vel = random( -14, -4 );  }
    if( x < 0 ){ x += 10; vel = random( 5, 14 ); }
  }
  
  void dibujar(){
    image( hades, x, y);
  }
  
  float getX1(){
    return x;
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
  
  void reciclar(){
    x = width/2;
    y = 0+50;
  }
}  
