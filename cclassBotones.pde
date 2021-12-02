class Botones {
  int bx, by, bancho, balto, bordes, actual, siguiente, numimg;
  int tx, ty;
  String texto;
  PFont botones;
  PImage [] img = new PImage [2];

  Botones (int bx_, int by_, int bancho_, int balto_) {
    for (int i=0; i<img.length; i++) {
      img [i] = loadImage ("boton" +i+".png");
    }

    bx = bx_;
    by = by_;
    bancho =bancho_;
    balto = balto_;
    botones = createFont ("SpecialElite-Regular.ttf", 20);
  }

  void dibujarBotones(int numimg_, int actual_, int siguiente_) {
    numimg = numimg_;
    actual = actual_;
    siguiente =siguiente_;
    image (img [numimg], bx, by, bancho, balto);
  }


  void dibujarBoton (int pactual, int psig, int pbordes, String ptexto ) {
    actual = pactual;
    siguiente = psig;
    bordes = pbordes;
    texto = ptexto;
    fill (255, 0, 0);
    rect (bx, by, bancho, balto, bordes);
    fill (255);
    textAlign (CENTER, TOP);
    textFont (botones);
    textSize (20);
    text (texto, bx+bancho/2, by+balto/3);
  }

  boolean botonpresionado (int bx_, int by_, int bancho_, int balto_) {
    bx= bx_;
    by=by_;
    bancho = bancho_;
    balto = balto_;
    boolean presionado = mouseX>bx && mouseX<bx+bancho && mouseY>by && mouseY <by + balto ==true;
    return presionado;
  }
}
