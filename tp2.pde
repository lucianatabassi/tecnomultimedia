String bohemian, rhapsody;
PFont fuente1, fuente2;
int ty, ty2;
int pantalla;
PImage i2, i3, i4, i5, i6, logo;
color fondo = (0);
float transparencia = (255);
float px, py, dirx, diry;
int tam;

void setup (){
  size (600, 600);
  pantalla = 0;
 ty = 550;
  ty2 = height;
 
  tam = 100;
  dirx = random(-2, 2);
  diry = random (-2, 2);
  px = width/2;
  py = height/2;
  
  fuente1 = loadFont ("Arial-BoldMT-48.vlw");
  bohemian = "";
  fuente2= loadFont ("FelixTitlingMT-48.vlw");
rhapsody = "";

  
  i2 = loadImage ("bohemian.jpeg");
  i3 = loadImage ("KEZWJD6UCJBDFMEEKYR2EXADKE.jpg");
  i4 = loadImage ("219c1a7c-14c6-4dc5-8eeb-0666b2d71a97_alta-libre-aspect-ratio_default_0.jpg");
  i5 = loadImage ("5NDUUEJ5KBDPTIB4GQW4E7HSJE.jpg");
  i6 = loadImage ("DwoGdkvWwAEU8Oo.jpg");
 logo = loadImage ("bohemian-rhapsody-5bd8665978e2d.png");
  
  }
  void draw (){
    background (0);
    transparencia = map (ty, 600, 0, 0, 255);
     
     fill (255, transparencia);
     tint (frameCount, 255);
     image (logo, 0, 0, width, height);
    if  (frameCount >= 200) {
         noTint();
          }
     
    textAlign (CENTER);
    
   
    if (ty > 0 && pantalla < 7){
      ty = ty-2;
     ty2= ty2-2;
      
      
    }else{
      ty = 550;
     ty2 = height;
      
      
      }
      if (ty == 0 || ty2 == 0){
        pantalla++;
        }
        if (pantalla == 1) {
        
         fill (255, transparencia);
         bohemian = "PROTAGONISTAS:";
         rhapsody = "Freddie Mercury \n (Rami Malek) \n Roger Taylor \n (Ben Hardy) \n John Deacon \n (Joe Mazzello) \n Brian May \n (Gwilym Lee)";
            image (i2, 0, 0, width, height);
         
        }
          
          else if (pantalla == 2) {
            fill (255, transparencia);
             bohemian = "SECUNDARIOS: ";
            rhapsody = "Mary Austin \n (Lucy Boynton) \n John Reid \n (Aidan Gillen) \n Jim Beach \n (Tom Hollander ) \n Paul Prenter \n (Allen Leech) \n Jim Hutton \n (Aaron McCusker) \n Jer Bulsara \n (Meneka Das) \n Bomi Bulsara \n (Ace Bhatti)";
            image (i3, 0, 0, width, height);
            }
            else if (pantalla == 3){
              fill (255, transparencia);
              bohemian = "MÚSICA: ";
              rhapsody = "Freddie Mercury \n (voz, piano) \n John Deacon \n (bajo) \n Brian May \n (guitarra, voz) \n Roger Taylor \n (bateria, voz) ";
             image (i4, 0, 0, width, height);
              }
              else if (pantalla == 4) {
                fill (255, transparencia);
                bohemian = "MUSICOS ADICIONALES:";
                rhapsody = "Tim Staffell \n David Bowie \n Spike Edney \n Michael Kamen \n Fred Mandel \n National Philharmonic \n Orchestra";
                image (i5, 0, 0, width, height);
              }
                else if (pantalla == 5){
                fill (255, transparencia);
                 bohemian = "DIRECCIÓN: ";
                 rhapsody = "Bryan Singer \n Dexter Fletcher";
                 image (i6, 0, 0, width, height);
                 
                }
                else if (pantalla == 6 ) {
                  fill (255, transparencia);
                  text ("FIN", px, py);
                  if (px >= width - tam/2 || px < tam/2){
                    dirx = dirx *-1;
                    }
                    if (py >= height - tam/2 || py < tam/2) {
                      diry = diry *-1;
                      }
                      
                      px = px+dirx;
                      py = py+diry;
                  
                  
                  bohemian = "";
                  rhapsody = "";
                  
                    }
                    
  
                   if (pantalla > 6){
                   background (0);
                   bohemian = "";
                   rhapsody = "";
                   }
                    
               
     fill (255, transparencia);
     textFont (fuente1);
     text (bohemian, 300, ty);
     textFont (fuente2);
     textSize (40);
     text (rhapsody, 300, ty2);
    println (ty, ty2);
  println ("PANTALLA", pantalla);
  println ("MOUSE", mouseX, mouseY);
 
     }
     
     void mousePressed (){
       frameCount = 0;
       setup ();
       
      }
