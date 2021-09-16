String [] lineas;
int num;
int tx =300;
void For () {
  lineas = loadStrings ("cuento.txt");
  for (int i=0; i<lineas.length; i++) {
    }
  }

void pantalla0 () {
  noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
  textFont (titulo);
  text ("El Gato Negro", width/2, 90);
 
  botonInicio(170, 340, 130, 50, 50);
  fill (255);
  textAlign (CENTER, TOP);
  textSize (30);
  textFont (textos);
  text ("CREDITOS", 234, 355);
  
   botonInicio(350, 340, 130, 50, 50);
  fill (255);
  textAlign (CENTER, TOP);
  textSize (30);
  textFont (textos);
  text ("INICIAR", 415, 355);
  }
  
 void pantalla1() {
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num], tx, 30);
       text (lineas[num+1],tx, 45);
  // text ("pantalla 1", width/2, height/2);
   }
   
   void pantalla2 () {
     For();
     textAlign (CENTER, BOTTOM);
     textSize (15);
     text (lineas[num+2], tx, 30);
       text (lineas[num+3],tx, 45);
   //text ("pantalla 2", width/2, height/2);
   }
   
   void pantalla3 () {
     For();
     textAlign (CENTER, BOTTOM);
     textSize (15);
     text (lineas[num+4], tx, 30);
       text (lineas[num+5],tx, 45);
       text (lineas[num+6],tx, 60);
  // text ("pantalla 3", width/2, height/2);
   }
   
   void pantalla4 () { //primera bifurcacion
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+7], tx, 30);
       text (lineas[num+8],tx, 45);
       text (lineas[num+9],tx, 60);
       text (lineas[num+10],tx, 75);
   //text ("pantalla 4", width/2, height/2);
   }
   
   void pantalla5 () { //camino original
   For ();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+11], tx, 30);
       text (lineas[num+12],tx, 45);
       text (lineas[num+13],tx, 60);
  // text ("pantalla 5", width/2, height/2);
   }
   
   void pantalla5a () { // camino original
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+20], tx, 30);
       text (lineas[num+21],tx, 45);
       text (lineas[num+22],tx, 60);
       text (lineas[num+23],tx, 75);
   //text ("pantalla 5a", width/2, height/2);
   }
   
    void pantalla5b () { // camino original
    For();
    textAlign (CENTER, BOTTOM);
    textSize (15);
    text (lineas[num+24], tx, 30);
       text (lineas[num+25],tx, 45);
       text (lineas[num+26],tx, 60);
   //text ("pantalla 5b", width/2, height/2);
   }
   
   void pantalla6 () { //camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+14], tx, 30);
       text (lineas[num+15],tx, 45);
  // text ("pantalla 6", width/2, height/2);
   }
   
   void pantalla6a () { //camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+16], tx, 30);
       text (lineas[num+17],tx, 45);
       text (lineas[num+18], tx, 60);
       text (lineas[num+19],tx, 75);
  // text ("pantalla 6a", width/2, height/2);
   }
   
   void pantalla6b () { //camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+27], tx, 30);
       text (lineas[num+28],tx, 45);
   //text ("pantalla 6b", width/2, height/2);
   }
   
   void pantalla7 () { //segunda bifurcacion
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+29], tx, 30);
       text (lineas[num+30],tx, 45);
       text (lineas[num+31],tx, 60);
   //text ("pantalla 7", width/2, height/2);
   }
   
   void pantalla8 () { // camino original
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+32], tx, 30);
       text (lineas[num+33],tx, 45);
   //text ("pantalla 8", width/2, height/2);
   }
   
   void pantalla8a () { // camino original
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+36], tx, 30);
       text (lineas[num+37],tx, 45);
   //text ("pantalla 8a", width/2, height/2);
   }
   
   void pantalla8b () { // camino original
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+42], tx, 30);
  // text ("pantalla 8b", width/2, height/2);
   }
   
    void pantalla8c () { // camino original
    For();
    textAlign (CENTER, BOTTOM);
    textSize (15);
     text (lineas[num+43], tx, 30);
       text (lineas[num+44],tx, 45);
       text (lineas[num+45],tx, 60);
       text (lineas[num+46],tx, 75);
   //text ("pantalla 8c", width/2, height/2);
   }
   
    void pantalla8d () { // camino original
    For();
    textAlign (CENTER, BOTTOM);
    textSize (15);
    text (lineas[num+47], tx, 30);
   //text ("pantalla 8d ", width/2, height/2);
   }
   
   void pantalla8dAlternativo () { 
     background (255);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8 alternativo ", width/2, height/2);
   }
   
   void pantalla8dAlternativo1 () { 
     background (255);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8 alternativo 1 ", width/2, height/2);
   }
   
   void pantalla8dAlternativo2 () { 
     background (255);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8 alternativo 2 ", width/2, height/2);
   }
   
   void pantalla8dAlternativo3 () { 
     background (255);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8 alternativo 3 ", width/2, height/2);
   }
   
   void pantalla8dAlternativo4 () { 
     background (255);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8 alternativo 4 ", width/2, height/2);
   }
   
      void pantalla8dAlternativo5 () { 
     background (255);
    noStroke();
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8 alternativo 5 ", width/2, height/2);
   }
   
   void pantalla8dOriginal () { 
     background (255);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (50);
   text ("pantalla 8d original ", width/2, height/2);
   }
    
   void pantalla9 () { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+34], tx, 30);
       text (lineas[num+35],tx, 45);
  // text ("pantalla 9", width/2, height/2);
   }
   
   void pantalla9a () { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+36], tx, 30);
       text (lineas[num+37],tx, 45);
  // text ("pantalla 9a", width/2, height/2);
   }
   
   void pantalla9b () { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+38], tx, 30);
       text (lineas[num+39],tx, 45);
       text (lineas[num+40],tx, 60);
  // text ("pantalla 9b", width/2, height/2);
   }
   
   void pantalla9c () { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+41], tx, 30);
 //  text ("pantalla 9c", width/2, height/2);
   }
   
   void pantalla9d () { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+49], tx, 30);
       text (lineas[num+50],tx, 45);
       text (lineas[num+51],tx, 60);
       text (lineas[num+52],tx, 75);
  // text ("pantalla 9d", width/2, height/2);
   }
   
    void pantalla10() { // camino alternativo
    For();
    textAlign (CENTER, BOTTOM);
    textSize (15);
    text (lineas[num+54], tx, 30);
       text (lineas[num+55],tx, 45);
       text (lineas[num+56],tx, 60);
  // text ("pantalla 10", width/2, height/2);
   }
   
   void pantalla11() { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+57], tx, 30);
       text (lineas[num+58],tx, 45);
  // text ("pantalla 11", width/2, height/2);
   }
   
   void pantalla12() { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+59], tx, 30);
   //text ("pantalla 12", width/2, height/2);
   }
   
   void pantalla13() { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
    text (lineas[num+60], tx, 30);
       text (lineas[num+61],tx, 45);
       text (lineas[num+62],tx, 60);
  // text ("pantalla 13", width/2, height/2);
   }
   
   void pantalla14() { // camino alternativo
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+63], tx, 30);
       text (lineas[num+64],tx, 45);
  // text ("pantalla 14", width/2, height/2);
   }
   
   void final1() { // 
   For();
   textAlign (CENTER, BOTTOM);
   textSize (15);
   text (lineas[num+53], tx, 30);
 //  text ("final1", width/2, height/2);
   }
   
      void creditos() { 
     background (0);
    fill (255); 
    textSize (30);
    textFont (textos);
    text ("PRESIONA R PARA REINICIAR", 315, 370);
    noStroke();
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (30);
   text ("Escrito por: Edgar Allan Poe", width/2, 100);
   text ("Trabajo realizado por: Luciana Tabassi",width/2, 200);
   text ("Legajo: 88119/1",width/2,300);
   }
   
   
   
   
   
   
   
   
