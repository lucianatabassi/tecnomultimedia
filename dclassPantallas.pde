class Pantallas {
  int numImage;
  PImage [] fondos = new PImage[6];
  Pantallas () {
    for (int i=0; i<fondos.length; i++) {
      fondos[i] = loadImage("fondo"+i+".jpg");
    }
  }
  void dibujarFondo(int num ) {
    numImage = num;
    image(fondos[numImage], 0, 0);
  }
}
