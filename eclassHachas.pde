class Hachas {
  PImage img;
  float hx, hy, htam, hvel;

  Hachas () {
    hx = random (10, 500);
    hy = random (-400, -100);
    htam = 50;
    hvel = random (2, 3);
    img = loadImage ("hacha.png");
  }

  void  dibujarHachas () {
    image (img, hx, hy, htam, htam);
  }

  void moverHachas () {
    hy+=hvel;

    if (hy > height) {
      hy = random (-400, -100);
    }
  }
}
