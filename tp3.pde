/* 
https://www.youtube.com/watch?v=QW5l1vIFnTw
Tecnologia Multimedial 1
Comision 1
Alumno: Tabassi Luciana
Legajo: 88119/1
Docente: Jose Luis Bugiolachi
*/
int cant = 10;
int cant1 = 8;
int ubic;
int c;
float tam;
float cx, cy;

void setup () {
  size (600, 500);
  ubic = width/cant;
  cx = random (width);
  cy= random (height);
  
  surface.setResizable (true);
 
  }
  void draw () {
 background (0);
 colorMode (HSB, width, 100, 100);
 for (int cc = 0; cc<cant1; cc++) {
      float tam = map (cc, 0, cant1-1, 400, 20);
      if (cc%2==0) {
        noFill();
        strokeWeight(10);
        stroke (c, 100, 100);
        c++;
        }
      ellipse (mouseX, mouseY, tam, tam);
    }
    
    
   if (mousePressed) {
    background (0);
   float opx = map (mouseX, 0, width, 70, 255);
   float opy = map (mouseY, 0, height, 70, 255);
   tam = random (ubic);
    for (int cx=0; cx<=cant; cx++) {
      for (int cy=0; cy<=cant; cy++) {
       float d = dist (cx, cy, mouseX, mouseY);
           if ((cx+cy)%2==0) {
             strokeWeight(10);
            stroke(c, 0, opy);
           noFill ();
            } else {
              
              stroke  (c, opx, opy);
            }
                ellipse (cx*random (width), cy*random (height), tam+d*2, tam+d*2);
             
    }
    }
    }
    
}
void keyPressed () {
  if (keyCode == ' ') {
    c=0;
    }
  
  
  }
