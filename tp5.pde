/* https://www.youtube.com/watch?v=R111IK0VrVA
Alumno: Tabassi Luciana
Legajo: 88119/1
Comision 1
Docente: Jose Luis Bugiolachi
*/
import processing.sound.*;
SoundFile terror, cat, ganar;

Juego juego;
void setup () {
  size (600, 400);
  juego = new Juego ();
  terror = new SoundFile (this, "Biological Weapon (online-audio-converter.com).mp3");
  cat = new SoundFile (this, "cat-yelling-in-fear.mp3");
  ganar = new SoundFile (this, "ganar (online-audio-converter.com).mp3");
  terror.amp(0.2);
  terror.loop();
}

void draw () {
  juego.dibujarJuego();
}

void mousePressed () {
  juego.iniciar();
  juego.creditos();
}
void keyPressed () {
  juego.jugar (keyCode);
  juego.reintentar (keyCode);
  juego.reiniciar (keyCode);
}
