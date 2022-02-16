PImage[] foto = new PImage [25];
PFont[] fuente = new PFont [4];
int pantallas = 0;
boolean[] clic = new boolean[52];

void setup(){
  
  size(800,600);
  noStroke();
  textAlign(CENTER);
  
  //------------------------------------------------------------------------------------
                                //Carga de imagenes
  
  foto[0] = loadImage("test bar.png");
  foto[1] = loadImage("Starting.png");
  foto[2] = loadImage("1 Screen.png");
  foto[3] = loadImage("2 Screen.png");
  foto[4] = loadImage("3 Screen.png");
  foto[5] = loadImage("3.a Screen.png");
  foto[6] = loadImage("4 Screen.png");
  foto[7] = loadImage("5 Screen.png");
  foto[8] = loadImage("6 Screen.png");
  foto[9] = loadImage("7 Screen.png");
  foto[10] = loadImage("8 Screen.png");
  foto[11] = loadImage("8.a Screen.png");
  foto[12] = loadImage("8.b Screen.png");
  foto[13] = loadImage("9 Screen.png");
  foto[14] = loadImage("10 Screen.png");
  foto[15] = loadImage("11 Screen.png");
  foto[16] = loadImage("12 Screen.png");
  foto[17] = loadImage("BLACK.png");
  foto[18] = loadImage("Creditos.png");
  foto[19] = loadImage("2a Screen.png");

//------------------------------------------------------------------------------------
                                //Carga de fuentes
              
  fuente[0] = createFont("Early GameBoy", 40);
  fuente[1] = createFont("The Centurion", 80);
  fuente[2] = createFont("PR Viking", 80);

//------------------------------------------------------------------------------------
  
}

void draw(){
  println(pantallas);

//----------------------------------------------------------------------------------
                                   //Pantalla de inicio y creditos
  starter();
  if(clic[50] == true && pantallas == 0) { Credits(); 
  pantallas = 50;}
  if( pantallas == 50 && clic[51] == true){   
    reset(); }

//----------------------------------------------------------------------------------
                                
  if( clic[1] == true && pantallas == 0){
    pantalla(2,1);
    texto("... \n ¿Donde estoy? \n ¿Por que todo es blanco? \n ...", 20,255,width/2,height/2+130,fuente[0]);
    texto("click para continuar",20,0,width/2,50,fuente[1]); }
  if(clic[2] == true && pantallas == 1){
    pantalla(3,2);
    texto("yo puedo explicarte todo, algo muy malo \n esta sucediendo en este mundo... \n todo perdio su color, pero \n se como arreglarlo. ",20,255,width/2,height/2+150,fuente[0]);
    texto("click para continuar",20,0,width/2,50,fuente[1]); }
  if(clic[3] == true && pantallas == 2){
    pantalla(19,3);
    texto("Hades es el causante de todo esto. \n debes derrotarlo para poder \n devolver el cosmos  \n a la normalidad... ",20,255,width/2,height/2+150,fuente[0]);  
    texto("click para continuar",20,0,width/2,50,fuente[1]); }
   if(clic[4] == true && pantallas == 3){
    pantalla(4,4);
    texto("Aceptas ir al inframundo \n para derrotar a Hades?",20,255,width/2,height/2+150,fuente[0]);
    texto("Rechazar",15,255,110,550,fuente[0]);
    texto("Aceptar",15,255,width-100,550,fuente[0]); }
        if(clic[5] == true && pantallas == 4 ){ //Rechazar
          pantalla(5,5);
          texto("Rechazaste tu oportunidad \n ... \n el mundo ya no tiene salvacion. \n lo siento.",20,255,width/2,height/2+150,fuente[0]);
          texto("click para reiniciar",20,0,width/2,50,fuente[1]); } if( pantallas == 5 && clic[6] == true ){ reset(); }
          
        if(clic[7] == true && pantallas == 4 ){ //Aceptar
          pantalla(6,6);
          texto("click para continuar",20,0,width/2,50,fuente[1]);
          texto("Recibiste: \n Iron Axe full \n 2 Golden Coins",20,255,width/2,height/2+160,fuente[0]); }
    if( pantallas == 6 && clic[8] == true ){
      
      pantalla(7,7);
      texto("bienvenida, alma nomada \n ...hacia donde deseas partir? \n Cada viaje cuesta 2 Golden Coins",20,255,width/2,height/2+160,fuente[0]);
      texto("Olimpo",15,255,110,550,fuente[0]);
      texto("Inframundo",15,255,width-100,550,fuente[0]); }
        
        if( pantallas == 7 && clic[9] == true){ //Olimpo
           pantalla(17,8);
           texto("Nadie espera por ti en el olimpo \n los dioses no son cobardes \n ...y los hombres no son dioses",20,255,width/2,height/2,fuente[2]);
           texto("click para continuar",20,255,width/2,50,fuente[1]); } if( pantallas == 8 && clic[10] == true ){ reset(); }
        if( pantallas == 7 && clic[11] == true){ //Inframundo
           pantallas = 9;
           image(foto[8],0,0);
           texto("click para continuar",20,255,width/2,50,fuente[1]); }
    if( pantallas == 9 && clic[12] == true ){
      pantalla(8,10);
      texto("¿Que es lo que buscas, simple mortal..? \n Que te trae ante mi... \n Cual es tu deseo... ",25,255,width/2,height/2+155,fuente[2]);
      texto("Servirte",15,255,110,550,fuente[0]); 
      texto("Asesinarte",15,255,width-100,550,fuente[0]);}  
        if( pantallas == 10 && clic[13] ){   // Izquierda
          pantalla(9,11);
          texto("Maldita raza desagradable, me ponen iracundo! \n Debi acabar con todos de una vez \n en lugar de privarlos de la majestuosidad del color!  ",25,255,width/2,height/2+165,fuente[2]);
          texto("click para continuar",20,255,width/2,50,fuente[1]); }
          if( pantallas == 11 && clic[14] == true ){
           pantalla(11,12); 
           texto("¡¡ MUERE !!  ",70,255,width/2,height/2+250,fuente[2]); } if( pantallas == 12 && clic[15] == true ) { reset(); }
        if( pantallas == 10 && clic[16] == true ){ //Derecha
          pantalla(9,13);
          texto("A pesar del asco que te tengo \n no te negare el derecho de luchar por tu vida \n ¡ A muerte ! ",25,255,width/2,height/2+165,fuente[2]);
          texto("directo",15,255,110,550,fuente[0]); //Izq
          texto("contraataque",15,255,width-100,550,fuente[0]); } //Der
           if(pantallas == 13 && clic[17] == true ) { //izq
             pantalla(11,14);
             texto("¡¡ MUERE !!  ",70,255,width/2,height/2+200,fuente[2]);
             texto("click para continuar",20,255,width/2,50,fuente[1]);
           } if( pantallas == 14 && clic[18] == true ) { 
               pantallas = 15; 
               image(foto[17],0,0);
               texto("No lograste esquivar su ataque..",20,255,width/2,height/2,fuente[0]);
               texto("click para continuar",20,255,width/2,50,fuente[1]);
             } if ( pantallas == 15 && clic[19] == true ) { reset(); }
        if(pantallas == 13 && clic[20] == true){ //Der
          pantalla(10,16);
          texto("click para continuar",20,255,width/2,50,fuente[1]);
          texto("¡ YO PUEDO !",60,255,width/2,height/2+200,fuente[2]); }
               if( pantallas == 16 && clic[21] == true ){ 
                 pantalla(12,17);
                 texto("click para continuar",20,255,width/2,50,fuente[1]); }
               if( pantallas == 17 && clic[22] == true ){ 
                 pantalla(13,18);
                 texto("click para continuar",20,255,width/2,50,fuente[1]); }
               if( pantallas == 18 && clic[23] == true ){ 
                 pantalla(14,19);
                 texto("click para continuar",20,255,width/2,50,fuente[1]); 
                 texto("lo has logrado.. fue dificil pero saliste victorioso \n contra el mismisimo Hades... ",25,255,width/2,height/2+165,fuente[2]); }
               if( pantallas == 19 && clic[24] == true ){ 
                 pantalla(14,20);
                 texto("click para continuar",20,255,width/2,50,fuente[1]); 
                 texto("Por todo tu esfuerzo, mereces conocerme \n y entender por fin la razon de todo esto \n Soy... ",25,255,width/2,height/2+165,fuente[2]); }
               if( pantallas == 20 && clic[25] == true ){ 
                 pantalla(14,21);
                 texto("click para continuar",20,255,width/2,50,fuente[1]); 
                 texto(" ...Tu conciencia ",35,255,width/2,height/2+200,fuente[2]); }
               if( pantallas == 21 && clic[26] == true ){ 
                 pantalla(14,22);
                 texto("click para continuar",20,255,width/2,50,fuente[1]); 
                 texto("Todo lo que paso fue una ilusion.. \n espero que puedas perdonarte.. \n solo queria... ",25,255,width/2,height/2+165,fuente[2]); }
               if( pantallas == 22 && clic[27] == true ){
                 pantalla(15,23);
                 texto("click para continuar",20,255,width/2,50,fuente[1]);
                 texto("... Morir feliz. ",25,255,width/2,height/2+200,fuente[2]); }
               if( pantallas == 23 && clic[28] == true ) {
                 pantalla(16,24);
                 texto("click para continuar",20,255,width/2,50,fuente[1]);
                 texto("y me di cuenta de que realmente \n tu le diste color a tu vida. ",25,255,width/2,height/2+165,fuente[2]); }
               if( pantallas == 24 && clic[29] == true ){
                 pantalla(17,25);
                 texto(" FIN. ",70,255,width/2,height/2,fuente[2]);
                 texto(" Click para reiniciar ",15,255,width/2,height/2+280,fuente[0]);
               } if ( pantallas == 25 && clic[30] == true ) { reset(); }
         
  
  
}

void mousePressed(){
  
 if( boton(270,410,250,50) ){
   clic[1] = true;
 }else {clic[1] = false;}
 if( boton(230,486,300,50) ){
 clic[50] = true; } 
 if( boton(300,470,200,50) && pantallas == 50 ){
 clic[51] = true; }
 
 
 
 if( pantallas == 1 ) { clic[2] = true; }
 if( pantallas == 2 ) { clic[3] = true; }
 if( pantallas == 3 ) { clic[4] = true; }
 if( pantallas == 4 && botonIzq() ) { clic[5] = true; }
 if( pantallas == 5 ) { clic[6] = true; }
 
 if( botonDer() ){   clic[7] = true;    }
 if( pantallas == 6 ){ clic[8] = true;  }
 
 if( pantallas == 7 && botonIzq() ) { clic[9] = true; }
 if( pantallas == 8 ){ clic[10] = true; }
 if( pantallas == 7 && botonDer() ){ clic[11] = true; }
 if( pantallas == 9){ clic[12] = true;  }
 if( pantallas == 10 && botonIzq() ){ clic[13] = true; }
 if( pantallas == 11 ) { clic[14] = true; }
 if( pantallas == 12 ) { clic[15] = true; }
 if( pantallas == 10 && botonDer() ){ clic[16] = true; }
 if( pantallas == 13 && botonIzq() ){ clic[17] = true; }
 if( pantallas == 14 ){ clic[18] = true; }
 if( pantallas == 15 ){ clic[19] = true; }
 if( pantallas == 13 && botonDer() ){ clic[20] = true; }
 if( pantallas == 16 ) { clic[21] = true; }
 if( pantallas == 17 ) { clic[22] = true; }
 if( pantallas == 18 ) { clic[23] = true; }
 if( pantallas == 19 ) { clic[24] = true; }
 if( pantallas == 20 ) { clic[25] = true; }
 if( pantallas == 21 ) { clic[26] = true; }
 if( pantallas == 22 ) { clic[27] = true; }
 if( pantallas == 23 ) { clic[28] = true; }
 if( pantallas == 24 ) { clic[29] = true; }
 if( pantallas == 25 ) { clic[30] = true; }
 if( pantallas == 26 ) { clic[31] = true; }

  
}
