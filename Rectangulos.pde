class Rectangulos {
 float MIN_AMP = 25;
 float MAX_AMP = 100;
 float MIN_PITCH = 34; 
 float MAX_PITCH = 94;
 float f = 0.8;
 float amp, pitch;
 float UMBRAL_AMPLITUD = 80;
 int colorAct;
 
 GestorSenial gestorAmp, gestorPitch;
 
 float inicia, ancho, alto;
 
 Rectangulos() {
   gestorAmp = new GestorSenial(MIN_AMP, MAX_AMP, f);
   gestorPitch = new GestorSenial(MIN_PITCH, MAX_PITCH, f);
   osc = new OscP5(this, 12345);
   noStroke();
   rectMode(CENTER);
 }
 
 
 
 void dibujar() {
   gestorAmp.actualizar(amp);
   gestorPitch.actualizar(pitch);
   
   frameRate(35);
   rect(inicia, 325, ancho, alto);
   
   
   if (amp>70) {
     inicia = inicia + 4;
   }
   
   if (amp>45 && amp<90) {
     if (colorAct == 0) {
       fill(paleta.darUnColor1(), 255);
     } else if (colorAct == 1) {
         fill(paleta.darUnColor2(), 255);
     } else {
         fill(paleta.darUnColor3(), 255); 
     } 
   }else if (amp<45){
     if (colorAct == 0) {
       fill(paleta.darUnColor1(), 240);
     } else if (colorAct == 1) {
         fill(paleta.darUnColor2(), 240);
     } else {
         fill(paleta.darUnColor3(), 240); 
     }
  } 
  
  alto = random(150, 600);
  
  if (pitch <= 50) {
     ancho = 6;
   } else if (pitch <= 75) {
       ancho = 8;
   } else if (pitch <= 90) {
       ancho = 10;
   }
   
   if (pitch > 100 ) {
     background(255);
     inicia = 0;
   }
   
   if (inicia == 0) {
     
     colorAct= int (random(0,3));
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
   }
  
  
 }
 
  void oscEvent(OscMessage m){
  if(m.addrPattern().equals("/amp")){
   amp = m.get(0).floatValue();
}

 if(m.addrPattern().equals("/pitch")){
   pitch = m.get(0).floatValue(); 
}
 }
 }
 

 
