/* String conseguirNombre (FBody cuerpo) {

  String nombre = "nada";

  if (cuerpo != null) {
    nombre= cuerpo.getName();
    if (nombre == null) {
      nombre = "nada";
    }
  }
  return nombre;
}*/


/*void dividirEstruc(FBox estruc){
 
 for (int i =0; i<estruc.length; i++){
 
 float d = estruc[i].getSize()/4;
 float x = estruc[i].getX();
 float y = estruc[i].getY();
 
 mundo.remove("rec"+i);
 
 
 for(int i = 0; i<4; i++){
 FBox hijo = new FBox (d);
 hijo.setPosition (x + random(-d, d), y + random (-d,d));
 mundo.add(hijo);
 }}
 }*/
 
    void boton(float x, float y, float tamX, float tamY){
      pushStyle();

      fill(61,22,23);
      noStroke();
      if (mouseX>x && mouseX<x+tamX && mouseY>y && mouseY<y+tamY){
        fill(180);
        if(mousePressed && estadoPantalla==0){
          estadoPantalla=1; 
        }else if(mousePressed && (estadoPantalla==2 || estadoPantalla ==3) ){
          estadoPantalla=1; 
          reiniciar();
        //  reiniciar();
        }
      }
      rect(x,y,tamX,tamY);
      popStyle();
   }
   
void reiniciar(){
  mundo.remove(myCircle);
  mundo.add(myCircle);
  myCircle.setStatic(true);

live=true;
mueve=false;

balas=0; 
mundo.remove(lobo.hitbox);
lobo = new Enemigo();
lobo.hitbox.setName("enemigo");
mundo.add(lobo.hitbox);
perder.stop();

for (int i=0; i<estruc.length; i++) {

  mundo.remove(estruc[i]);
  
    int X = p[i][0], Y = p[i][1];

    if (i==0) {
      estruc[i] = new FBox(25, 60);
      estruc[i].setFill(176, 137, 104);
      estruc[i].setDensity(10);
      mundo.add(estruc[i]);
    } else if (i==1) {
      estruc[i] = new FBox(25, 60);
      estruc[i].setFill(176, 137, 104);
      estruc[i].setDensity(10);
      mundo.add(estruc[i]);
    } else if (i==2) {
      estruc[i] = new FBox(300, 10);
      estruc[i].setFill(156, 102, 68);
      mundo.add(estruc[i]);
    } else if (i==3) {
      estruc[i] = new FBox(40, 40);
      estruc[i].setFill(221, 184, 146);
      mundo.add(estruc[i]);
    } else if (i==4) {
      estruc[i] = new FBox(40, 40);
      estruc[i].setFill(221, 184, 146);
      mundo.add(estruc[i]);
    } else if (i==5) {
      estruc[i] = new FBox(300, 10);
      estruc[i].setFill(156, 102, 68);
      mundo.add(estruc[i]);
    } else if (i==6) {
      estruc[i] = new FBox(60, 180);
      estruc[i].setFill(127, 85, 57);
      mundo.add(estruc[i]);
    } else if (i==7) {
      estruc[i] = new FBox(60, 180);
      estruc[i].setFill(127, 85, 57);
      mundo.add(estruc[i]);
    } else if (i==8) {
      estruc[i] = new FBox(400, 50);
      estruc[i].setFill(127, 85, 57);
      estruc[i].setDensity(10);
      mundo.add(estruc[i]);
    } else if (i==9) {
      estruc[i] = new FBox(20, 80);
      estruc[i].setFill(156, 102, 68);
      mundo.add(estruc[i]);
    } else if (i==10) {
      estruc[i] = new FBox(20, 80);
      estruc[i].setFill(156, 102, 68);
      mundo.add(estruc[i]);
    } else if (i==11) {
      estruc[i] = new FBox(70, 40);
      estruc[i].setFill(221, 184, 146);
      mundo.add(estruc[i]);
    } else if (i==12) {
      estruc[i] = new FBox(20, 80);
      estruc[i].setFill(156, 102, 68);
      mundo.add(estruc[i]);
    } else if (i==13) {
      estruc[i] = new FBox(20, 80);
      estruc[i].setFill(156, 102, 68);
      mundo.add(estruc[i]);
    } else if (i==14) {
      estruc[i] = new FBox(20, 30);
      estruc[i].setFill(176, 137, 104);
      mundo.add(estruc[i]);
    } else if (i==15) {
      estruc[i] = new FBox(20, 30);
      estruc[i].setFill(176, 137, 104);
      mundo.add(estruc[i]);
    }

    estruc[i].setName("rec"+i);
    estruc[i].setGrabbable(false);
    estruc[i].setNoStroke();
    estruc[i].setForce(15, 15);
    estruc[i].setPosition(X, Y);
  }

  FPoly base = new FPoly();
  mundo.remove(base);
  base.vertex(0, 500);
  base.vertex(60, 500);
  base.vertex(160, 800);
  base.vertex(250, 570);
  base.vertex(310, 580);
  base.vertex(360, 505);
  base.vertex(410, 505);
  base.vertex(450, 505);
  base.vertex(505, 505);
  base.vertex(560, 505);
  base.vertex(600, 505);
  base.vertex(710, 505);
  base.vertex(770, 505);
  base.vertex(880, 505);
  base.vertex(900, 550);
  base.vertex(920, 700);
  base.vertex(970, 650);
  base.vertex(1050, 680);
  base.vertex(1280, 580 );
  base.vertex(1280, 720);
  base.vertex(0, 720);
  base.setStatic(true);
  base.setGrabbable(false);
  base.setNoStroke();
    base.setFill(237,224,212);
  mundo.add(base);
  lobo.colocar();
}
