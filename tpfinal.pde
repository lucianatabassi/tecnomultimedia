/*https://www.youtube.com/watch?v=qWJCgd6xfPA
Alumno: Tabassi Luciana
Legajo: 88119/1
Comision 1
Docente: Jose Luis Bugiolachi
*/
import processing.sound.*;
SoundFile terror, cat, ganar;

Principal principal;
void setup () {
  size (600, 400);
  principal = new Principal();

  terror = new SoundFile (this, "Biological Weapon (online-audio-converter.com).mp3");
  cat = new SoundFile (this, "cat-yelling-in-fear.mp3");
  ganar = new SoundFile (this, "ganar (online-audio-converter.com).mp3");
  terror.amp(0.2);
  terror.loop();
}

void draw () {
  principal.mostrarPrincipal();
}

void mousePressed () {
  principal.presionar();
}

void keyPressed () {
  principal.teclas(keyCode, principal);
}
