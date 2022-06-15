Rectangulos r;
import oscP5.*;
Paleta paleta;
OscP5 osc;    


void setup() {
  size(1350, 650);
  background(255);
  paleta = new Paleta("Paletaaaa.jpeg", "paletaaaa2.jpeg", "paletaaaa3.jpeg");
  r=new Rectangulos ();
} 



void draw() {
    r.dibujar();
}
  
