class Gato {

  PImage img;
  float gx, gy, gtam;
  Gato () {
    img = loadImage ("gato.png");
    gx = 540;
    gy = 340;
    gtam = 60;
  }

  void dibujarGato() { 
    image (img, gx, gy, gtam, gtam);
  }

  void moverGato(int tecla) {
    if (tecla==RIGHT && gx<width-gtam) {
      gx+=3;
    }
    if (tecla == LEFT && gx>gtam/6) {
      gx-=3;
    }
    if (tecla == UP && gy>height/10) {
      gy-=3;
    }
    if (tecla == DOWN && gy<height-gtam) {
      gy+=3;
    }
  }
}
