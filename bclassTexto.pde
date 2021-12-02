class Texto {
  String [] lineas;
  int num;
  int tx, ty;
  Texto () {

    lineas = loadStrings ("cuento.txt");
  }

  void mostrarTexto(int num_, int tx_, int ty_ ) {
    tx= tx_;
    ty = ty_;
    num = num_;
    textAlign (CENTER, BOTTOM);
    textSize (15);
    text (lineas[num], tx, ty);
  }
}
