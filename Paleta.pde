class Paleta {
 PImage imagen;
 PImage imagen2;
 PImage imagen3;
 
 Paleta (String nombreArch, String nombreArch2, String nombreArch3) {
   imagen=loadImage(nombreArch);
   println(imagen);
   imagen2=loadImage(nombreArch2);
   imagen3=loadImage(nombreArch3);
 }
 
 
 
 color darUnColor1() {
      int x = int (random (imagen.width));
      int y = int (random (imagen.height));
   return imagen.get(x,y);
 }
  
  color darUnColor2() {
    int x = int (random (imagen2.width));
    int y = int (random (imagen2.height));
    return imagen2.get(x,y);
  
}

 color darUnColor3() {
    int x = int (random (imagen3.width));
    int y = int (random (imagen3.height));
    return imagen3.get(x,y);
  
}
}
