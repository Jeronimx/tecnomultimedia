void starter(){

  if(pantallas == 0){
                       
  image(foto[1],0,0);
  textFont(fuente[2]);
  fill(#3B2643, random(200,255));
  text("Valhalla ArraY",width/2, height/2-150);
  
  //fill(0,60);
  //rect(width/2-130,height/2+110,250,50);
  
  fill(255);
  textFont(fuente[0]);
  text("Start",width/2,height/2+150);
  
  //fill(0,60);
  //rect(width/2-150,height/2+190,300,50);
  
  fill(255);
  textFont(fuente[0]);
  text("Credits",width/2,height/2+230);
}

}
