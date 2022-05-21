ArrayList<Rectangulos>r;
import oscP5.*;
Paleta paleta;
float xIn = 0;
OscP5 osc;    


void setup() {
  size(1200, 800);
  background(255);

  r= new ArrayList<Rectangulos>();
  paleta = new Paleta("Paletaaaa.jpeg");
  
  
  for(int i=0; i<500; i++){
  r.add(new Rectangulos (paleta.darUnColor()));
 
  }
  
  
} 



void draw() {
 

    for(Rectangulos r: r){
    r.dibujar();
    
    
    }  
}
  
