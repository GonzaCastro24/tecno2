class Paleta {
 PImage imagen;
 
 Paleta (String nombreArch) {
   imagen=loadImage(nombreArch);
 }
 
 color darUnColor() {
   int x = int (random (imagen.width));
   int y = int (random (imagen.height));
   
   return imagen.get(x,y);
   
   
   
   
 }
  
  
  
  
  
}
