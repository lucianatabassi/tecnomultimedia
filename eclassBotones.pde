class Botones {
  PFont botones;
  int bx, by, bancho, balto, bordes, iniciar, creditos;
  Botones (int bx_, int by_, int bancho_, int balto_, int bordes_) {
    botones = createFont ("SpecialElite-Regular.ttf", 20);
    bx = bx_;
    by=by_;
    bancho=bancho_;
    balto = balto_;
    bordes = bordes_;
  }

  void dibujarBoton() {
    fill (255, 0, 0);
    rect (bx, by, bancho, balto, bordes);
    fill (255);
    textFont (botones);
    textSize (20);
    text ("Iniciar", 176, 360);
    text ("Creditos", 360, 360);
  }
}
