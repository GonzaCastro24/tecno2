class Rectangulos {

  // CALIBRAR
 float MIN_AMP = 45;
 float MAX_AMP = 100;
 float MIN_PITCH = 44; 
 float MAX_PITCH = 74;
 boolean monitor = false;
 
 float f = 0.8;
 
 float amp, pitch;
 
 float UMBRAL_AMPLITUD = 80; //elimina ruido de fondo
 
 GestorSenial gestorAmp, gestorPitch;
 
 OscP5 osc;
 float x1;
 float movimiento;
 
 
  // ESTADO
 boolean haySonido = false;
 boolean habiaSonido = false;
 
 // eventos
 boolean empezoElSonido = false;
 boolean terminoElSonido = false;
 
 float ancho, alto;
 
 color c;
 
 
 
 Rectangulos(float num, color c_) {
   x1=num;
   c=c_;
   
   gestorAmp = new GestorSenial(MIN_AMP, MAX_AMP, f);
   gestorPitch = new GestorSenial(MIN_PITCH, MAX_PITCH, f);
   
   
 }
 
 
 
 void dibujar() {
 
   gestorAmp.actualizar(amp);
   gestorPitch.actualizar(pitch);
   
   noStroke();
   rectMode(CENTER);
   
   fill(c);
   
   
   
   rect(x1, 400, ancho, alto);
   
   if (amp>70) {
     movimiento=x1+5;
     x1=movimiento;
   }
   
 }
  
  
 void cambiarAltura() {
   if (haySonido && (amp>45) && (amp<90)) {
     alto=amp;
   }
 }
 
 void cambiarGrosor() {
   if (haySonido && (pitch <= 50)) {
     ancho = 5;
     
   } else if (haySonido && (pitch <= 75)) {
     ancho = 8;
     
   }
   
   else if (haySonido && (pitch <= 90)) {
     ancho = 12;
     
   }
   
 }
 
 void oscEvent(OscMessage m){
  if(m.addrPattern().equals("/amp")){
   amp = m.get(0).floatValue(); //cargo en la variable amp el primer dato del mensaje q entra
  println("amp:" + amp);
}

 if(m.addrPattern().equals("/pitch")){
   pitch = m.get(0).floatValue(); //cargo en la variable amp el primer dato del mensaje q entra
  println("pitch:" + pitch);
}
  
 }
}
