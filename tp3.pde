 /*
                               Trabajo Practico N°3
                                 Juliani Jeronimo
                                     88171/6
 
 Despues de ejecutar el programa se puede apretar un numero del 1 al 6 para ver la
 ilusion de forma manual y mover las lineas con el mouse o apretar una tecla entre la 
 Q y la Y  para ver la ilusion de forma automatica.
 
 Link del video - https://youtu.be/3ogeW01loeE
 

 */




PImage Foto1, Foto2, Foto3, Foto4, Foto5, Foto6;
PImage PlanB;
Float Speed;

void setup(){
  
  size(400,400);
  Foto1 = loadImage("imagen1.png");
  Foto2 = loadImage("imagen2.png");
  Foto3 = loadImage("imagen3.png");
  Foto4 = loadImage("imagen4.png");
  Foto5 = loadImage("imagen5.png");
  Foto6 = loadImage("imagen6.png");
  PlanB = loadImage("barras.png");
  Speed = -400.0;


}

void draw(){
   
    background(255);

  if(key=='1'){
    image(Foto1,0,0);
      
   for(int a=-40; a < 40; a++){
     fill(0);
     rect(a*15+mouseX,0,5,400);
   }  

  }
  
  if(key=='2'){
    image(Foto2,0,0);
      
   for(int a=-40; a < 40; a++){
     fill(0);
     rect(a*15+mouseX,0,5,400);
   }  

  }
  
  if(key=='3'){
    image(Foto3,0,0);
      
   for(int a=-40; a < 40; a++){
     fill(0);
     rect(a*15+mouseX,0,5,400);
   }  

  }  
  
  if(key=='4'){
    image(Foto4,0,0);
      
   for(int a=-40; a < 40; a++){
     fill(0);
     rect(a*15+mouseX,0,5,400);
   }  

  }  

  if(key=='5'){
    image(Foto5,0,0);
      
   for(int a=-40; a < 40; a++){
     fill(0);
     rect(a*15+mouseX,0,5,400);
   }  

  }
  
  if(key=='6'){
    image(Foto6,0,0);
      
   for(int a=-40; a < 40; a++){
     fill(0);
     rect(a*15+mouseX,0,5,400);
   }  

  }  
  


  
  
  
  
  
  
  if(Speed > 0){
   Speed = -400.0; 
  }
 
  if(key=='q'){
    image(Foto1,0,0);
    image(PlanB,Speed,0);
  }
  
  if(key=='w'){
    image(Foto2,0,0);
    image(PlanB,Speed,0);
  }
  
  if(key=='e'){
    image(Foto3,0,0);
    image(PlanB,Speed,0);
  }  
  
  if(key=='r'){
    image(Foto4,0,0);
    image(PlanB,Speed,0);
  }  

  if(key=='t'){
    image(Foto5,0,0);
    image(PlanB,Speed,0);
  }
  
  if(key=='y'){
    image(Foto6,0,0);
    image(PlanB,Speed,0);
   
  }  
  
    
        Speed = Speed + 0.5;
        
   println(Speed);
   

}
