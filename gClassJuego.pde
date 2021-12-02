class Juego {

  PImage puerta;
  int pantalla;
  int px, py, ptam;
  Fondos fondos;
  Botones botgame;
  Gato gato;
  Hachas [] hachas = new Hachas [8];

  Juego () {
    pantalla = 0;
    botgame = new Botones (235, 325, 130, 50);

    puerta = loadImage ("puerta.png");
    px = 20;
    py =0;
    ptam = 75;
    fondos = new Fondos();  
    gato = new Gato();

    for (int i =0; i < hachas.length; i++) {
      hachas[i] = new Hachas();
    }
  }


  void dibujarJuego () {
    if (pantalla == 0) {
      fondos.dibujarFondo(26);
      botgame.dibujarBoton(0, 1, 50, "Iniciar");
    }
    //instrucciones
    if (pantalla == 1) {
      fondos.dibujarFondo (27);
    }
    //jugando
    if (pantalla == 2) {
      fondos.dibujarFondo (28);
      for (int i =0; i < hachas.length; i++) {
        hachas[i].dibujarHachas();
        hachas[i].moverHachas();
      }
      gato.dibujarGato();
      if (keyPressed) {
        gato.moverGato(keyCode);
      }
      image (puerta, px, py, ptam, ptam);
    }
    //ganar
    if (pantalla == 3) {
      fondos.dibujarFondo (29);
    }
    //perder
    if (pantalla == 4) {
      fondos.dibujarFondo (30);
      cat.pause();
    }
    matarGato();
    ganar();
  }



  void matarGato () {
    for (int i=0; i<hachas.length; i++) {
      float distan = dist (hachas[i].hx, hachas[i].hy, gato.gx, gato.gy);
      if (distan<gato.gtam/3+hachas[i].htam/3) {
        pantalla = 4;
        cat.amp(0.2);
        cat.play();
      }
    }
  }

  void ganar() {
    float dist2 = dist (gato.gx, gato.gy, px, py);
    if (dist2<gato.gtam/2+ptam/2) {
      pantalla = 3;
      ganar.play();
      gato.gx=540;
      gato.gy=340;
    }
  }


  void mousePresionado () {
    if (botgame.botonpresionado (235, 325, 130, 50) && pantalla == botgame.actual) {
      pantalla =botgame.siguiente;
    }
  }

  void teclaPresionada(int tecla, Principal tecla1) {
    if (tecla == ENTER && pantalla == 1) {
      pantalla = 2;
    }
    if (tecla == ENTER && pantalla == 3) {
      tecla1.cambiarPantalla(14);
    } 
    else if (tecla == 'r' || tecla == 'R') {
      pantalla = 0;
      for (int i =0; i < hachas.length; i++) {
        hachas[i].dibujarHachas();
        hachas[i].moverHachas();
        hachas[i].hx=random(10, 500);
        hachas[i].hy=random (-400, -100);
      }

      gato.gx=540;
      gato.gy=340;
    }
    if (tecla == ' ' && pantalla == 4) {
      pantalla = 2;
      for (int i =0; i < hachas.length; i++) {
        hachas[i].dibujarHachas();
        hachas[i].moverHachas();
        hachas[i].hx=random(10, 500);
        hachas[i].hy=random (-400, -100);
      }

      gato.gx=540;
      gato.gy=340;
    }
  }
}
