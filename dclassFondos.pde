class Fondos {
  int numImg;
  PImage [] fotos = new PImage [35];
  Fondos () {
    for (int i=0; i<fotos.length; i++) {
      fotos [i] = loadImage ("img" +i+".jpg");
    }
  }
  void dibujarFondo (int num) {
    numImg = num;
    image (fotos[numImg], 0, 0);
  }
}
