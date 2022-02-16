void texto(String tx, int tam, color c, float x, float y, PFont f){
  
 pushStyle(); 
 textFont(f);
 fill(c);
 textSize( tam );
 text(tx,x,y);
 popStyle();
}
