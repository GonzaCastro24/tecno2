import oscP5.*;
Paleta paleta;
Rectangulos rectangulo;
float xIn = 0;

OscP5 osc;

void setup() {
  size(1200, 800);
  background(255);
  
  osc = new OscP5(this, 12345);
  
  paleta = new Paleta("Paletaaaa.jpeg");
  
  
  rectangulo = new Rectangulos(xIn, paleta.darUnColor());
   
  
  
}


void draw() {
  
 rectangulo.dibujar();
  
} 

void oscEvent(OscMessage m) {
 println(m); 
}
