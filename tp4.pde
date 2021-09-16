/* https://www.youtube.com/watch?v=GrarY9YWYWQ
Alumno: Tabassi Luciana
Legajo: 88119/1
Comision 1
Docente: Jose Luis Bugiolachi
Cuento: El Gato Negro

Aclaraciones: Las dos primeras imagenes estan hechas por mi (no estan terminadas). El resto de las imagenes van a tener el mismo diseño.
Hay una bifurcacion que no esta completa. 
*/
PFont titulo, textos;
PImage [] fotos = new PImage [26];
int numimg;
String estado = "titulo";
PImage [] img = new PImage [2];
int px = 495, py=330, alto =100, ancho = 70; // boton derecho 
int px2 = 0, py2=330; // boton izquierda

void setup () {
  size (600, 400);
  img [0] = loadImage ("boton0.png");
  img [1] = loadImage ("boton1.png");
  
  titulo = createFont ("Nosifer-Regular.ttf", 50);
  textos = createFont ("SpecialElite-Regular.ttf", 20);
    
        for (int i=0; i<fotos.length; i++) {
      fotos [i] = loadImage ("img"+i+".jpg");
    }
    }
  
   void draw () {
     if (estado.equals ("titulo")) {
       image (fotos[numimg], -40, 0);
     pantalla0();
        
     }else if (estado.equals ("pantalla 1")) {
       image (fotos[numimg], 0, 0);
       pantalla1();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 2")) {
        image (fotos[numimg], 0, 0);
      pantalla2();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 3")) {
        tint (255, 0, 0);
        image (fotos[numimg], 0, 0);
      pantalla3();
        image (img[0], px, py, alto, ancho);
        noTint();
      }else if (estado.equals ("pantalla 4")) {
        image (fotos[numimg], 0, 0);
      pantalla4();
       textSize (10);
       text ("El gato no muere", 550, 330);
       image (img[0], px, py, alto, ancho);
       text ("Encuentra otro gato", 50, 330);
      image (img[1], px2, py2, alto, ancho);
      
      }else if (estado.equals ("pantalla 5")) {
        image (fotos[numimg], 0, 0);
      pantalla5();
        image (img[0], px, py, alto, ancho);
        
      }else if (estado.equals ("pantalla 6")) {
        image (fotos[6], 0, 0);
      pantalla6();
       image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 5a")) {
        image (fotos[7], 0, 0);
      pantalla5a();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 5b")) {
        image (fotos[8], 0, 0);
      pantalla5b();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 6a")) {
        image (fotos[16], 0, 0);
      pantalla6a();
       textSize (10);
       text ("El gato destruye algo", 545, 330);
      image (img[0], px, py, alto, ancho);
      text ("Baja al sotano con el hombre", 75, 330);
      image (img[1], px2, py2, alto, ancho);
      
      }else if (estado.equals ("pantalla 6b")) {
        image (fotos[17], 0, 0);
      pantalla6b();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 7")) {
        image (fotos[9], 0, 0);
      pantalla7();
      textSize (15);
      textAlign (CENTER, TOP);
      text ("¿Que decide hacer con la mujer?", 300, 330);
      image (img[0], px, py, alto, ancho);
      textSize (10);
      text ("La entierra", 550, 330);
       text ("La esconde en la pared", 60, 320);
      image (img[1], px2, py2, alto, ancho);
      
      }else if (estado.equals ("pantalla 8")) {
        image (fotos[10], 0, 0);
      pantalla8();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 9")) {
        image (fotos[18], 0, 0);
      pantalla9();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 8a")) {
        tint (255, 0, 0);
        image (fotos[11], 0, 0);
      pantalla8a();
      image (img[0], px, py, alto, ancho);
      noTint();
      
      }else if (estado.equals ("pantalla 8b")) {
        image (fotos[12], 0, 0);
      pantalla8b();
      textSize (10);
      text ("Final original", 550, 330);
      image (img[0], px, py, alto, ancho);
      text ("Final alternativo", 50, 330);
      image (img[1], px2, py2, alto, ancho);
      
      }else if (estado.equals ("pantalla 8c")) {
        image (fotos[13], 0, 0);
      pantalla8c();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 8d")) {
        image (fotos[14], 0, 0);
      pantalla8d();
      image (img[0], px, py, alto, ancho);
      
      // bifurcacion no terminada
      }else if (estado.equals ("pantalla 8dalternativo")) {
      pantalla8dAlternativo();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 8dalternativo1")) {
      pantalla8dAlternativo1();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 8dalternativo2")) {
      pantalla8dAlternativo2();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 8dalternativo3")) {
      pantalla8dAlternativo3();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 8dalternativo4")) {
      pantalla8dAlternativo4();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 8dalternativo5")) {
      pantalla8dAlternativo5();
      image (img[0], px, py, alto, ancho);
      }else if (estado.equals ("pantalla 8dOriginal")) {
     pantalla8dOriginal();
      image (img[0], px, py, alto, ancho);
      }//
      
     else if (estado.equals ("pantalla 9a")) {
       tint (255, 0, 0);
       image (fotos[11], 0, 0);
     pantalla9a();
      image (img[0], px, py, alto, ancho);
      noTint();
      
      }else if (estado.equals ("pantalla 9b")) {
        image (fotos[19], 0, 0);
     pantalla9b();
     textSize (15);
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 9c")) {
        image (fotos[12], 0, 0);
     pantalla9c();
      textSize (10);
      text ("Final original", 50, 340);
      image (img[1], px2, py2, alto, ancho);
       text ("Final Alternativo", 550, 335);
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 9d")) {
        image (fotos[20], 0, 0);
     pantalla9d();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 10")) {
        image (fotos[21], 0, 0);
     pantalla10();
         image (img[0], px, py, alto, ancho);
      }
      else if (estado.equals ("pantalla 11")) {
        tint (255, 0, 0);
        image (fotos[22], 0, 0);
     pantalla11();
      image (img[0], px, py, alto, ancho);
      noTint();
      }
      else if (estado.equals ("pantalla 12")) {
        image (fotos[23], 0, 0);
     pantalla12();
      image (img[0], px, py, alto, ancho);
      }
      else if (estado.equals ("pantalla 13")) {
        image (fotos[24], 0, 0);
     pantalla13();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("pantalla 14")) {
        image (fotos[25], 0, 0);
     pantalla14();
      image (img[0], px, py, alto, ancho);
      
      }else if (estado.equals ("final 1")){
        image (fotos[15], 0, 0);
        final1();
      image (img[0], px, py, alto, ancho);
      
   } else if (estado.equals ("creditos")) {
        image (fotos[numimg], 0, 0);
     creditos();
      
      }
        
      println ("estado " + estado);
    }
    
    void mousePressed () {
         
    if (botonPresionado(mouseX, mouseY, 350, 340, 130, 50) && estado.equals("titulo") && numimg<fotos.length-1) { // boton 
    estado = "pantalla 1";
      numimg++;
        } 
        if (botonPresionado(mouseX, mouseY, 170, 340, 130, 50) && estado.equals("titulo") && numimg<fotos.length-1) { // boton 
    estado = "creditos";
    }        
    if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 1")&& numimg<fotos.length-1) { 
    estado = "pantalla 2";
   numimg++;
   }     
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 2")&& numimg<fotos.length-1) { 
    estado = "pantalla 3";
    numimg++;
        }    
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 3")&& numimg<fotos.length-1) { 
    estado = "pantalla 4";
    numimg++;
        }
    else if (botonPresionado(mouseX, mouseY, px2, py2, alto, ancho) && estado.equals("pantalla 4")&& numimg<fotos.length-1) { 
    estado = "pantalla 5";
     numimg++;
     } else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 4")&& numimg<fotos.length-1) { 
    estado = "pantalla 6";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 5")&& numimg<fotos.length-1) { 
    estado = "pantalla 5a";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 5a")&& numimg<fotos.length-1) { 
    estado = "pantalla 5b";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 5b") && numimg<fotos.length-1) { 
    estado = "pantalla 7";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 6")&& numimg<fotos.length-1) { 
    estado = "pantalla 6a";
    }
     else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 6a")&& numimg<fotos.length-1) { 
    estado = "pantalla 6b";
    }else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 6b")&& numimg<fotos.length-1) { 
    estado = "pantalla 7";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 7")&&numimg<fotos.length-1) { 
    estado = "pantalla 9";
    }else  if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 9")&&numimg<fotos.length-1) { 
    estado = "pantalla 9a";
    } else  if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 9a")&&numimg<fotos.length-1) { 
    estado = "pantalla 9b";
    }else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 9b")&&numimg<fotos.length-1) { 
    estado = "pantalla 9c";
    }
    else if (botonPresionado(mouseX, mouseY, px2, py2, alto, ancho) && estado.equals("pantalla 9c")&&numimg<fotos.length-1) { 
    estado = "pantalla 9d";
    }else    if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 9c")&&numimg<fotos.length-1) { 
    estado = "pantalla 10";
    }else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 10")&&numimg<fotos.length-1) { 
    estado = "pantalla 11";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 11")&&numimg<fotos.length-1) { 
    estado = "pantalla 12";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 12")&&numimg<fotos.length-1) { 
    estado = "pantalla 13";
    }
    else if (botonPresionado(mouseX, mouseY,px, py, alto, ancho) && estado.equals("pantalla 13")&&numimg<fotos.length-1) { 
    estado = "pantalla 14";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 14")&&numimg<fotos.length-1) { 
    estado = "creditos";
    } 
    else if (botonPresionado(mouseX, mouseY, px2, py2, alto, ancho) && estado.equals("pantalla 7")&& numimg<fotos.length-1) { 
    estado = "pantalla 8";
    }
    if (botonPresionado(mouseX, mouseY, px2, py2, alto, ancho) && estado.equals("pantalla 6a")&& numimg<fotos.length-1) { 
    estado = "pantalla 5b";
    }    
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8")&&numimg<fotos.length-1) { 
    estado = "pantalla 8a";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8a")&&numimg<fotos.length-1) { 
    estado = "pantalla 8b";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8b")&&numimg<fotos.length-1) { 
    estado = "pantalla 8c";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8c")&&numimg<fotos.length-1) { 
    estado = "pantalla 8d";
    }
    else if (botonPresionado(mouseX, mouseY, px2, py2, alto, ancho) && estado.equals("pantalla 8b")&&numimg<fotos.length-1) { 
    estado = "pantalla 8dalternativo";
    }
    if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8dalternativo")) { 
    estado = "pantalla 8dalternativo1";
    }
    if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8dalternativo1")) { 
    estado = "pantalla 8dalternativo2";
    }
    if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8dalternativo2")) { 
    estado = "pantalla 8dalternativo3";
    }
    if (botonPresionado(mouseX, mouseY, px, px, alto, ancho) && estado.equals("pantalla 8dalternativo3")) { 
    estado = "pantalla 8dalternativo4";
    }
    if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8dalternativo4")) { 
    estado = "pantalla 8dalternativo5";
    }    
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 9d")&&numimg<fotos.length-1) { 
    estado = "final 1";
    }else if (botonPresionado(mouseX, mouseY,px, py, alto, ancho) && estado.equals("final 1")&&numimg<fotos.length-1) { 
    estado = "creditos";
    }
    else if (botonPresionado(mouseX, mouseY, px, py, alto, ancho) && estado.equals("pantalla 8d")&&numimg<fotos.length-1) { 
    estado = "final 1";
    }
    else if (botonPresionado(mouseX, mouseY,px, py, alto, ancho) && estado.equals("final 1")&&numimg<fotos.length-1) { // boton derecho arriba
    estado = "creditos";
    }
    
    }

    void keyPressed () {
      if (keyCode == 'r'|| keyCode =='R') {
        estado = "titulo";
        numimg=0;       
      }
    }
    
  
 
