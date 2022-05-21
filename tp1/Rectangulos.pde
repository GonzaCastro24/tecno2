class Rectangulos {

  // CALIBRAR
 float MIN_AMP = 45;
 float MAX_AMP = 100;
 float MIN_PITCH = 44; 
 float MAX_PITCH = 74;
 
 float f = 0.8;
 
 float amp, pitch;
 
 float UMBRAL_AMPLITUD = 80; //elimina ruido de fondo
 
 GestorSenial gestorAmp, gestorPitch;
 
 float x1;
 float movimiento;
 
 //OscP5 osc;
 
 
  // ESTADO
 boolean haySonido = true;
 boolean habiaSonido = false;
 
 // eventos
 boolean empezoElSonido = false;
 boolean terminoElSonido = false;
 
 float ancho, alto=random(0,200);
 
 color c;

 
 Rectangulos( color c_) {
   c=c_;
   
   gestorAmp = new GestorSenial(MIN_AMP, MAX_AMP, f);
   gestorPitch = new GestorSenial(MIN_PITCH, MAX_PITCH, f);
   
   
    osc = new OscP5(this, 12345);
    

   
   
   
   
 }
 
 
 
 void dibujar() {
 
   gestorAmp.actualizar(amp);
   gestorPitch.actualizar(pitch);
   
   haySonido = gestorAmp.filtradoNorm() > 0.1;
   
   noStroke();
   rectMode(CENTER);
   fill(c);
   frameRate(40);
   
   
   
   
   
   if (amp>70) {
     movimiento=x1+5;
     x1=movimiento;
   }
   
   
   
   if (haySonido && (amp>45) && (amp<90)) {
     alto=alto++;
   }
   else if (haySonido && (amp<45)){
     alto = 30;;
  }
  
  if (haySonido && (pitch <= 50)) {
     ancho = 5;
     
   } else if (haySonido && (pitch <= 75)) {
     ancho = 8;
     
   }
   
   else if (haySonido && (pitch <= 90)) {
     ancho = 12;
     
   }
   rect(x1, 400, ancho, alto);
 }
  
  
 /* void cambiarAltura() {
   if (haySonido && (amp>45) && (amp<90)) {
     alto=alto++;
   }
  else if (haySonido && (amp<45)){
   alto = 30;;
  }
 }*/
 
/* void cambiarGrosor() {
   if (haySonido && (pitch <= 50)) {
     ancho = 5;
     
   } else if (haySonido && (pitch <= 75)) {
     ancho = 8;
     
   }
   
   else if (haySonido && (pitch <= 90)) {
     ancho = 12;
     
   }
   
 } */
 
 
 
  void oscEvent(OscMessage m){
  if(m.addrPattern().equals("/amp")){
   amp = m.get(0).floatValue();
  //println("amp:" + amp);
}

 if(m.addrPattern().equals("/pitch")){
   pitch = m.get(0).floatValue(); 
  //println("pitch:" + pitch);
}
 }
 
}
 
