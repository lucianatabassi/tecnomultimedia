class Principal {
  Botones botizq, botder, botgame, boti, botc;
  Fondos fondos;
  Texto texto;
  Juego juego;

  int tx, ty;
  int pantalla;

  Principal () {
    pantalla =0;
    //botones para iniciar
    boti = new Botones (150, 330, 130, 50);
    botc = new Botones (340, 330, 130, 50);

    //botones (imagenes) para cambiar de pantallas
    botder = new Botones(495, 330, 100, 70);
    botizq = new Botones(0, 330, 100, 70);

    fondos = new Fondos();
    texto = new Texto();
    juego = new Juego();
  }

  void mostrarPrincipal () {
    if (pantalla == 0) {
      fondos.dibujarFondo(0);
      fill (255, 0, 0);
      boti.dibujarBoton(0, 1, 50, "Iniciar");
      botc.dibujarBoton(0, 35, 50, "Creditos");
    }

    if (pantalla == 1) {
      fondos.dibujarFondo(1);
      botder.dibujarBotones(0, 1, 2);
      texto.mostrarTexto(0, 300, 30);
      texto.mostrarTexto(1, 300, 45);
    } 
    if (pantalla ==2) {
      fondos.dibujarFondo(2);
      botder.dibujarBotones(0, 2, 3);
      texto.mostrarTexto(2, 300, 30);
      texto.mostrarTexto(3, 300, 45);
    } 
    if (pantalla == 3) {
      fondos.dibujarFondo(3);
      botder.dibujarBotones(0, 3, 4);
      texto.mostrarTexto(4, 300, 30);
      texto.mostrarTexto(5, 300, 45);
      texto.mostrarTexto(6, 300, 60);
    } 
    if (pantalla == 4) {
      fondos.dibujarFondo(4);
      texto.mostrarTexto(7, 300, 30);
      texto.mostrarTexto(8, 300, 45);
      texto.mostrarTexto(9, 300, 60);
      texto.mostrarTexto(10, 300, 75);
      textSize (10);
      text ("El gato no muere", 550, 330);
      botder.dibujarBotones(0, 4, 5);
      text ("Encuentra otro gato", 50, 330);
      botizq.dibujarBotones(1, 4, 6);
    }

    if (pantalla == 5) {
      fondos.dibujarFondo(6);
      texto.mostrarTexto(14, 300, 30);
      texto.mostrarTexto(15, 300, 45);
      botder.dibujarBotones(0, 5, 19);
    } 
    //bifurcacion original
    if (pantalla == 6) {
      fondos.dibujarFondo(5);
      texto.mostrarTexto(11, 300, 30);
      texto.mostrarTexto(12, 300, 45);
      texto.mostrarTexto(13, 300, 60);
      botder.dibujarBotones(0, 6, 7);
    } 
    if (pantalla == 7) {
      fondos.dibujarFondo(8);
      texto.mostrarTexto(24, 300, 30);
      texto.mostrarTexto(25, 300, 45);
      texto.mostrarTexto(26, 300, 60);
      botder.dibujarBotones(0, 7, 8 );
    } 
    if (pantalla == 8) {
      fondos.dibujarFondo(9);
      texto.mostrarTexto(29, 300, 30);
      texto.mostrarTexto(30, 300, 45);
      texto.mostrarTexto(31, 300, 60);
      textSize (15);
      textAlign (CENTER, TOP);
      text ("¿Que decide hacer con la mujer?", 300, 330);
      textSize (10);
      text ("La esconde en la pared", 60, 320);
      botder.dibujarBotones(0, 8, 21 );
      text ("La entierra", 550, 330);
      botizq.dibujarBotones(1, 8, 9);
    } 
    //JUEGO
    if (pantalla == 9) {
      juego.dibujarJuego();
    }

    if (pantalla == 14) {
      fondos.dibujarFondo (10);
      texto.mostrarTexto(32, 300, 30);
      texto.mostrarTexto(33, 300, 45);
      botder.dibujarBotones(0, 14, 15);
    }
    if (pantalla == 15) {
      tint (255, 0, 0);
      fondos.dibujarFondo(11);
      noTint();
      texto.mostrarTexto(36, 300, 30);
      texto.mostrarTexto(37, 300, 45);
      botder.dibujarBotones(0, 15, 16);
    }

    if (pantalla == 16) {
      fondos.dibujarFondo(12);
      texto.mostrarTexto(42, 300, 30);
      textSize (10);
      text ("Final original", 550, 330);
      botder.dibujarBotones(0, 16, 17);
      text ("Final alternativo", 50, 330);
      botizq.dibujarBotones(1, 16, 31);
    }
    if (pantalla == 17) {
      fondos.dibujarFondo(13);
      texto.mostrarTexto(43, 300, 30);
      texto.mostrarTexto(44, 300, 45);
      texto.mostrarTexto(45, 300, 60);
      texto.mostrarTexto(46, 300, 75);
      botder.dibujarBotones(0, 17, 18);
    }

    if (pantalla == 18) {
      fondos.dibujarFondo (15);
      texto.mostrarTexto(53, 300, 30);
      botder.dibujarBotones(0, 18, 35);
    }

    //camino: el gato no muere
    if (pantalla == 19) {
      fondos.dibujarFondo (16);
      texto.mostrarTexto(16, 300, 30);
      texto.mostrarTexto(17, 300, 45);
      texto.mostrarTexto(18, 300, 60);
      texto.mostrarTexto(19, 300, 75);
      textSize (10);
      text ("El gato destruye algo", 545, 330);
      botder.dibujarBotones(0, 19, 20);
      text ("Baja al sotano con el hombre", 75, 330);
      botizq.dibujarBotones(1, 19, 7);
    }
    if (pantalla == 20) {
      fondos.dibujarFondo (17);
      texto.mostrarTexto(27, 300, 30);
      texto.mostrarTexto(28, 300, 45);
      botder.dibujarBotones(0, 20, 8);
    }

    //entierra a la mujer en el patio
    if (pantalla == 21) {
      fondos.dibujarFondo (18);
      texto.mostrarTexto(34, 300, 30);
      texto.mostrarTexto(35, 300, 45);
      botder.dibujarBotones(0, 21, 22);
    }
    if (pantalla == 22) {
      tint (255, 0, 0);
      fondos.dibujarFondo(11);
      noTint();
      texto.mostrarTexto(36, 300, 30);
      texto.mostrarTexto(37, 300, 45);
      botder.dibujarBotones(0, 22, 23);
    }
    if (pantalla == 23) {
      fondos.dibujarFondo(19);
      texto.mostrarTexto(38, 300, 30);
      texto.mostrarTexto(39, 300, 45);
      texto.mostrarTexto(40, 300, 60);
      botder.dibujarBotones(0, 23, 24);
    }
    if (pantalla == 24) {
      fondos.dibujarFondo(12);
      texto.mostrarTexto(41, 300, 30);
      textSize (10);
      text ("Final original", 550, 330);
      botder.dibujarBotones(0, 24, 25);
      text ("Final alternativo", 50, 330);
      botizq.dibujarBotones(1, 24, 30);
    }
    //entierra a la mujer: final alternativo
    if (pantalla == 25) {
      fondos.dibujarFondo(21);
      texto.mostrarTexto(54, 300, 30);
      texto.mostrarTexto(55, 300, 45);
      texto.mostrarTexto(56, 300, 60);
      botder.dibujarBotones(0, 25, 26);
    }
    if (pantalla == 26) {
      tint (255, 0, 0);
      fondos.dibujarFondo(22);
      noTint();
      texto.mostrarTexto(57, 300, 30);
      texto.mostrarTexto(58, 300, 45);
      botder.dibujarBotones(0, 26, 27);
    }
    if (pantalla == 27) {
      fondos.dibujarFondo(23);
      texto.mostrarTexto(59, 300, 30);
      botder.dibujarBotones(0, 27, 28);
    }
    if (pantalla == 28) {
      fondos.dibujarFondo(24);
      texto.mostrarTexto(60, 300, 30);
      texto.mostrarTexto(61, 300, 45);
      texto.mostrarTexto(62, 300, 60);
      botder.dibujarBotones(0, 28, 29);
    }
    if (pantalla == 29) {
      fondos.dibujarFondo(25);
      texto.mostrarTexto(63, 300, 30);
      texto.mostrarTexto(64, 300, 45);
      botder.dibujarBotones(0, 29, 35);
    }

    //la entierra en el patio: segundo final
    if (pantalla == 30) {
      fondos.dibujarFondo(20);
      texto.mostrarTexto(49, 300, 30);
      texto.mostrarTexto(50, 300, 45);
      texto.mostrarTexto(51, 300, 60);
      texto.mostrarTexto(52, 300, 75);
      botder.dibujarBotones(0, 30, 18);
    }

    //camino original: final alternativo
    if (pantalla == 31) {
      fondos.dibujarFondo(21);
      texto.mostrarTexto(54, 300, 30);
      texto.mostrarTexto(55, 300, 45);
      texto.mostrarTexto(56, 300, 60);
      botder.dibujarBotones(0, 31, 32);
    }
    if (pantalla == 32) {
      fondos.dibujarFondo(31);
      texto.mostrarTexto(65, 300, 30);
      texto.mostrarTexto(66, 300, 45);
      botder.dibujarBotones(0, 32, 33);
    }
    if (pantalla == 33) {
      fondos.dibujarFondo(32);
      texto.mostrarTexto(67, 300, 30);
      texto.mostrarTexto(68, 300, 45);
      texto.mostrarTexto(69, 300, 60);
      botder.dibujarBotones(0, 33, 34);
    }
    if (pantalla == 34) {
      fondos.dibujarFondo(33);
      texto.mostrarTexto(70, 300, 30);
      texto.mostrarTexto(71, 300, 45);
      botder.dibujarBotones(0, 34, 35);
    }
    if (pantalla == 35) {
      fondos.dibujarFondo(34);
    }


    println ("pantalla" + pantalla);
  }



  //mouse
  void presionar () {
    if (botder.botonpresionado (495, 330, 100, 70) && pantalla == botder.actual) {
      pantalla = botder.siguiente;
    }

    if (botizq.botonpresionado (0, 330, 100, 70) && pantalla == botizq.actual) {
      pantalla =botizq.siguiente;
    }

    if (botc.botonpresionado (340, 330, 130, 50) && pantalla == botc.actual) {
      pantalla =botc.siguiente;
    }
    if (boti.botonpresionado (150, 330, 130, 50) && pantalla == boti.actual) {
      pantalla =boti.siguiente;
    }
    if (pantalla == 9) {
      juego.mousePresionado();
    }
  }


  void cambiarPantalla (int pantalla_) {
    pantalla = pantalla_ ;
  }

  void teclas (int tecla, Principal tecla1) {
    juego.teclaPresionada (keyCode, tecla1);
    
    if (tecla == 'r' || tecla == 'R') {
      pantalla = 0;
    } 
    if (pantalla == 9) {
      juego.teclaPresionada (keyCode, tecla1);
    }
  }
}
