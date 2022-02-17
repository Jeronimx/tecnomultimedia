class Aventura {

  Juego juego;
  Minim minim;
  AudioPlayer hover;
  AudioPlayer clicka;
  AudioPlayer fight;
  AudioPlayer wave;
  AudioPlayer horn;
  AudioPlayer naturaleza;
  AudioPlayer whispers;
  AudioPlayer firebackground;
  AudioPlayer interestelar;
  AudioPlayer muerte;


  boolean[] c = new boolean[55];
  PFont f1, f2, f3;
  int screen = 0;
  Boton boton;
  Pantalla pantallas;

  Aventura(PApplet a) {

    minim = new Minim(a);

    juego = new Juego(a);
    hover = minim.loadFile("hover.mp3", 1000);
    clicka = minim.loadFile("boton.mp3", 1000);
    fight = minim.loadFile("fight.mp3", 1000);
    wave = minim.loadFile("wave.mp3", 1000);
    horn = minim.loadFile("Horn.mp3", 1000);
    naturaleza = minim.loadFile("naturaleza.mp3", 1000);
    whispers = minim.loadFile("whispers.mp3", 1000);
    firebackground = minim.loadFile("firebackground.mp3", 1000);
    interestelar = minim.loadFile("interestelar.mp3", 1000);
    muerte = minim.loadFile("muerte.mp3", 1000);


    boton = new Boton();
    pantallas = new Pantalla();
    f1 = createFont( "Early GameBoy", 40);
    f2 = createFont( "The Centurion", 80);
    f3 = createFont( "PR Viking", 80);
  }

  void dibujar() {



    //println( juego.getGanaste() );
    //println(c[50]);


    //Start c - screen0
    pantallas.start();

    horn.play();
    naturaleza.play();
    //interestelar.rewind();
    //interestelar.pause();

    if (boton.click(300, 200, 470, 50) == true && screen == 0) {
      hover.rewind();

      hover.play();

      noStroke();
      fill(0, 50);
      rect(230, 490, 330, 50);
    } 
    if (  boton.click(270, 250, 410, 50) == true && screen == 0 ) {
      hover.play();
      if (hover.isPlaying()) {
        hover.rewind();
      }
      noStroke();
      fill(0, 50);
      rect(270, 410, 250, 50);
    }
    screen = 0;

    //Creditos c50 screen50    
    if ( c[50] == true ) {
      pantallas.creditos();
      screen = 50;
      textFont(f3);
      fill(#F3D6FF, random(200, 255));
      text("CREDITOS", width/2, height/2-150);
      texto("Made by : Jeronimo Juliani", 20, color(255), width/2, height/2+150, f1);
      fill(255);
      texto("Restart", 20, color(255), width/2, height/2+200, f1);


      if ( screen == 50 && boton.click(230, 300, 486, 50) == true) {

        hover.play();
        if (hover.isPlaying()) {
          hover.rewind();
        }
        noStroke();
        fill(0, 50);
        rect(290, 465, 200, 50);
      }

      reciclar();
    }

    //-------------------------------------------------------------------------

    //Pantalla1 c1 screen1

    if ( c[1] == true ) {

      horn.rewind();
      pantallas.pantalla(0, 17);
      screen = 1;
      texto("... \n ¿Donde estoy? \n ¿Por que todo es blanco y negro? \n ...", 20, 255, width/2, height/2+130, f1);
      texto("click para continuar", 20, 0, width/2, 50, f2);
    }
    //Pantalla2 c2 screen2
    if ( c[2] == true ) {
      pantallas.pantalla(1, 17);
      screen = 2;
      texto("yo puedo explicarte todo, algo muy malo \n esta sucediendo en este mundo... \n todo perdio su color, pero \n se como arreglarlo. ", 20, 255, width/2, height/2+150, f1);
      texto("click para continuar", 20, 0, width/2, 50, f2);
    }
    //Pantalla3 c3 screen3
    if ( c[3] == true ) {
      pantallas.pantalla(2, 17);
      screen = 3;
      texto("Hades es el causante de todo esto. \n debes derrotarlo para poder \n devolver el cosmos  \n a la normalidad... ", 20, 255, width/2, height/2+150, f1);  
      texto("click para continuar", 20, 0, width/2, 50, f2);
    }
    //Pantalla4 c4 screen4
    if ( c[4] == true ) {
      pantallas.pantalla(3, 17);
      screen = 4;
      texto("Aceptas ir al inframundo \n para derrotar a Hades?", 20, 255, width/2, height/2+150, f1);
      texto("Rechazar", 15, 255, 110, 550, f1);
      texto("Aceptar", 15, 255, width-100, 550, f1); 
      //Me quede acá 26/06/22
    }
    //Pantalla5 c5 screen5 RECHAZAR -
    if ( c[5] == true ) {
      muerte.play();
      pantallas.pantalla(4, 17);
      screen = 5;
      texto("Rechazaste tu oportunidad \n ... \n el mundo ya no tiene salvacion. \n lo siento.", 20, 255, width/2, height/2+150, f1);
      texto("click para reiniciar", 20, 0, width/2, 50, f2);
      reciclar();
    }
    //Pantalla6 c6 screen6 ACEPTAR
    if ( c[6] == true ) {
      pantallas.pantalla(5, 17);
      screen = 6;
      texto("Recibiste: \n Iron Axe full \n 2 Golden Coins", 20, 255, width/2, height/2+170, f1);
      texto("click para continuar", 20, 0, width/2, 80, f2);
    }

    //Pantalla7 c7 screen7
    if ( c[7] == true ) {
      wave.play();
      pantallas.pantalla(6, 17);
      screen = 7;
      texto("bienvenida, alma nomada \n ...hacia donde deseas partir? \n Cada viaje cuesta 2 Golden Coins", 20, 255, width/2, height/2+150, f1);
      texto("Olimpo", 15, 255, 110, 550, f1);
      texto("Inframundo", 15, 255, width-100, 550, f1);
    }
    //Pantalla8 c8 screen8 OLIMPO
    if ( c[8] == true ) {
      muerte.play();
      wave.pause();
      wave.rewind();
      pantallas.pantalla(16, 17);
      screen = 8;
      texto("Nadie espera por ti en el olimpo \n los dioses no son cobardes \n ...y los hombres no son dioses", 20, 255, width/2, height/2, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2); 
      reciclar();
    }
    //Pantalla9 c9 screen9 INFRAMUNDO
    if ( c[9] == true ) {
      wave.pause();
      wave.rewind();
      whispers.play();
      firebackground.play();
      pantallas.pantalla(7, 7);
      screen = 9;
      texto("click para continuar", 20, 0, width/2, 50, f2);
    }

    //Pantalla10 c10 screen10 //Hades te pregunta
    if ( c[10] == true ) {
      pantallas.pantalla(7, 17);
      screen = 10;
      texto("¿Que es lo que buscas, simple mortal..? \n Que te trae ante mi...? \n Cual es tu deseo... ", 25, 255, width/2, height/2+155, f3);
      texto("Servirte", 15, 255, 110, 550, f1);
      texto("Asesinarte", 15, 255, width-100, 550, f1);
    }
    //Pantalla11 c11 screen11 SERVIRTE

    if ( c[11] == true ) {
      pantallas.pantalla(8, 17);
      screen = 11;
      texto("Maldita raza desagradable, me ponen iracundo! \n Debi acabar con todos de una vez \n en lugar de privarlos de la majestuosidad del color!  ", 25, 255, width/2, height/2+155, f3);
      texto("click para continuar", 20, 0, width/2, 50, f2);
    }
    //Pantalla12 c12 screen12 CLICK AFTER SERVIRTE
    if ( c[12] == true ) {
      muerte.play();
      pantallas.pantalla(10, 17);
      screen = 12;
      texto("¡¡ MUERE !!", 70, 255, width/2, height/2+200, f3); 
      reciclar();
    }
    //Pantalla13 c13 screen13 ASESINARTE
    if ( c[13] == true ) {
      pantallas.pantalla(8, 17);
      screen = 13;
      texto("A pesar del asco que te tengo \n no te negare el derecho de luchar por tu vida \n ¡ A muerte ! ", 25, 255, width/2, height/2+155, f3); 
      texto("click para continuar", 20, 0, width/2, 50, f2);
    }
    //Pantalla14 c14 screen14
    if ( c[14] == true ) {
      pantallas.pantalla(9, 9);
      screen = 14;
      pushStyle();
      noStroke();
      fill(0, 60);
      rect(width/2-130, height/2-80, 260, 110);

      textSize(70);
      textFont(f3);
      fill(255, 3, random(0, 100));
      text("FIGHT", width/2, height/2); 
      popStyle();
    }
    //Pantalla15 c15 screen15 //ACA VA EL JUEGO
    //firebackground.mute();
    if ( c[15] == true ) {

      juego.actualizarJuego();
      juego.dibujarJuego();
      juego.puntos();


      //pantallas.pantalla(16,16);
      screen = 15;
      //texto("ACA VA EL JUEGO",100,255,width/2,height/2,f3);
    }else juego.reStart();
    
    
    
    //Pantalla16 c16 screen16 //EMPIEZA EL FIN - WIN
    if ( c[16] == true && juego.getGanaste() ) {


      interestelar.play();
      pantallas.pantalla(11, 11);
      screen = 16;
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla17 c17 screen17
    if ( c[17] == true ) {

      juego.reStart();

      pantallas.pantalla(12, 12);
      screen = 17;
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla18 c18 screen18
    if ( c[18] == true ) {
      pantallas.pantalla(13, 17);
      screen = 18;
      texto("lo has logrado.. fue dificil pero saliste victorioso \n contra el mismisimo Hades... ", 25, 255, width/2, height/2+165, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla19 c19 screen19
    if ( c[19] == true ) {
      pantallas.pantalla(13, 17);
      screen = 19;
      texto("Por todo tu esfuerzo, mereces conocerme \n y entender por fin la razon de todo esto. \n Yo soy... ", 25, 255, width/2, height/2+165, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla20 c20 screen20
    if ( c[20] == true ) {
      pantallas.pantalla(13, 17);
      screen = 20;
      texto("...TU CONCIENCIA", 50, 255, width/2, height/2+200, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla21 c21 screen21
    if ( c[21] == true ) {
      pantallas.pantalla(13, 17);
      screen = 21;
      texto("Todo lo que paso fue una ilusion, \n espero que puedas perdonarte. \n solo queria una ultima aventura y... ", 25, 255, width/2, height/2+165, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla22 c22 screen22 //morir en paz
    if ( c[22] == true ) {
      pantallas.pantalla(14, 17);
      screen = 22;
      texto("... Morir feliz.", 50, 255, width/2, height/2+200, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla23 c23 screen23  
    if ( c[23] == true ) {
      pantallas.pantalla(15, 17);
      screen = 23;
      texto("y me di cuenta de que realmente \n tu le diste color a tu vida.", 25, 255, width/2, height/2+165, f3);
      texto("click para continuar", 20, 255, width/2, 50, f2);
    }
    //Pantalla24 c24 screen24  FINAL
    if ( c[24] == true ) {
      if (interestelar.isPlaying() && firebackground.isPlaying() ) { 
        interestelar.rewind();
        interestelar.pause();
        firebackground.rewind();
        firebackground.pause();
      }


      pantallas.pantalla(16, 16);
      screen = 24;
      texto("FIN", 100, 255, width/2, height/2, f3); 
      texto("click para reiniciar", 20, 255, width/2, height-20, f1); 
      reciclar();
    }
  }

  void keys() {
    juego.tecleoJuego();
  }

  void click() {
    // Reciclados -------------------------------------------------------------

    if ( boton.click(300, 200, 470, 50) == true && screen == 50 ) { 
      c[0] = true;
    }
    if ( boton.click(0, 800, 0, 600) == true && screen == 5 || screen == 8 || screen == 12 || screen == 24) { 
      c[0] = true;
    }

    // Creditos --------------------------------------------------------------------------------------- 

    if ( boton.click(230, 300, 486, 50) == true && screen == 0 ) { 
      c[50] = true;
    }

    // Empieza ---------------------------------------------------------------------------------------

    if ( boton.click(270, 250, 410, 50) == true && screen == 0 ) { 
      c[1] = true;
    }
    if ( boton.click(0, 800, 0, 600) == true && screen == 1 ) { 
      c[2] = true;
    }
    if ( boton.click(0, 800, 0, 600) == true && screen == 2 ) { 
      c[3] = true;
    }
    if ( boton.click(0, 800, 0, 600) == true && screen == 3 ) { 
      c[4] = true;
    }
    //Primer decision - Aceptas o rechazas ir al inframundo -
    if ( screen == 4 && boton.Izq() ) { 
      c[5] = true;  
      clicka.play();
      clicka.rewind();
    }
    //ACEPTAS
    if ( screen == 4 && boton.Der() ) { 
      c[6] = true; 
      clicka.play();
      clicka.rewind();
    }

    //Barquero
    if ( screen == 6 && boton.click(0, 800, 0, 600) ) { 
      c[7] = true;
    }
    if ( screen == 7 && boton.Izq() ) { 
      c[8] = true; 
      clicka.play();
      clicka.rewind();
    }
    if ( screen == 7 && boton.Der() ) { 
      c[9] = true; 
      clicka.play();
      clicka.rewind();
    }
    //Hades pregunta
    if ( screen == 9 && boton.click(0, 800, 0, 600) ) { 
      c[10] = true;
    }
    //Servirte
    if ( screen == 10 && boton.Izq() ) { 
      c[11] = true;  
      clicka.play();
      clicka.rewind();
    }
    if ( screen == 11 && boton.click(0, 800, 0, 600) ) { 
      c[12] = true;
    }
    if ( screen == 10 && boton.Der() ) { 
      c[13] = true; 
      clicka.play();
      clicka.rewind();
    }
    if ( screen == 13 && boton.click(0, 800, 0, 600) ) { 
      c[14] = true;
    }

    //FIGHT
    if ( screen == 14 && boton.click(width/2-130, 260, height/2-80, 110 ) ) { 
      c[15] = true; 
      fight.play();
      fight.rewind();
    } else fight.pause();

    //FINAL
    if ( screen == 15 && boton.click(0, 800, 0, 600) ) { 
      c[16] = true;
    }
    if ( screen == 16 && boton.click(0, 800, 0, 600) ) { 
      c[17] = true;
    }
    if ( screen == 17 && boton.click(0, 800, 0, 600) ) { 
      c[18] = true;
    }
    if ( screen == 18 && boton.click(0, 800, 0, 600) ) { 
      c[19] = true;
    }
    if ( screen == 19 && boton.click(0, 800, 0, 600) ) { 
      c[20] = true;
    }
    if ( screen == 20 && boton.click(0, 800, 0, 600) ) { 
      c[21] = true;
    }
    if ( screen == 21 && boton.click(0, 800, 0, 600) ) { 
      c[22] = true;
    }
    if ( screen == 22 && boton.click(0, 800, 0, 600) ) { 
      c[23] = true;
    }
    if ( screen == 23 && boton.click(0, 800, 0, 600) ) { 
      c[24] = true;
    }
  }

  void reciclar() {
    if ( c[0] == true ) {
      for ( int i = 0; i < 52; i++ ) {
        screen = 0;
        c[i] = false;
      }
    }
  }

  void texto(String tx, int tam, color c, float x, float y, PFont f) {

    pushStyle(); 
    textFont(f);
    fill(c);
    textSize( tam );
    text(tx, x, y);
    popStyle();
  }
}
