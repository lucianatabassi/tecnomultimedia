void botonInicio (int px, int py, int ancho, int alto, int bordes) {
  fill (255, 0, 0);
  rect (px, py, ancho, alto, bordes);
    }
    
    boolean botonPresionado(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
  }
  
  
