class Juego {

  PImage puerta;
  String estado;
  int px, py, ptam;
  Pantallas fondos;
  Botones boti, botc;
  Gato gato;
  Hachas [] hachas = new Hachas [13];

  Juego () {
    estado = "intro";
    boti = new Botones(150, 330, 130, 50, 50);
    botc = new Botones (340, 330, 130, 50, 50);


    puerta = loadImage ("puerta.png");
    px = 20;
    py =0;
    ptam = 75;
    fondos = new Pantallas();  
    gato = new Gato();

    for (int i =0; i < hachas.length; i++) {
      hachas[i] = new Hachas();
    }
  }


  void dibujarJuego () {

    if (estado.equals ("intro")) {
      fondos.dibujarFondo(0);
      boti.dibujarBoton();
      botc.dibujarBoton();
    } else if (estado.equals ("instruc")) {
      fondos.dibujarFondo(2);
    } else if (estado.equals ("juego")) {
      fondos.dibujarFondo(1);
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

    if (estado.equals ("perder")) {
      fondos.dibujarFondo(4);         

      cat.pause();
    }

    if (estado.equals ("creditos")) {
      fondos.dibujarFondo(5);
    }
    if (estado.equals ("ganar")) {
      fondos.dibujarFondo(3);
    }

    matarGato();
    ganar();
  }

  void matarGato () {
    for (int i=0; i<hachas.length; i++) {
      float distan = dist (hachas[i].hx, hachas[i].hy, gato.gx, gato.gy);
      if (distan<gato.gtam/3+hachas[i].htam/3) {
        estado="perder";
        cat.amp(0.2);
        cat.play();
      }
    }
  }

  void ganar() {
    float dist2 = dist (gato.gx, gato.gy, px, py);
    if (dist2<gato.gtam/2+ptam/2) {
      estado = "ganar";
      ganar.play();
      gato.gx=540;
      gato.gy=340;
    }
  }

  void iniciar () {
    if (mouseX>boti.bx && mouseX<boti.bx+boti.bancho && mouseY >boti.by && mouseY<boti.by+boti.balto && estado.equals ("intro")) {
      estado= "instruc";
    }
  }

  void creditos () {
    if (mouseX>botc.bx && mouseX<botc.bx+botc.bancho && mouseY >botc.by && mouseY<botc.by+botc.balto && estado.equals ("intro")) {
      estado= "creditos";
    }
  }

  void jugar (int tecla1) {
    if (tecla1 == ENTER && estado.equals ("instruc")) {
      estado = "juego";
    }
  }

  void reintentar (int tecla2) {
    if (tecla2 == 'r'||tecla2 == 'R'|| estado.equals ("ganar") && estado.equals ("creditos")  ) {
      estado ="intro";
    }
  }

  void reiniciar (int tecla3) {
    if (tecla3 == ' ' && estado.equals ("perder")) {

      estado ="juego";
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
