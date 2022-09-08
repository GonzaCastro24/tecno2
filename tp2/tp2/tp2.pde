import fisica.*;

World world;
Debug debug;
Circle circle;
Paleta paleta;
FPoly estruc;

void setup() {
  size(1280, 700);
  Fisica.init(this);
  world = new World();
  debug = new Debug();
  circle = new Circle(50, 0, 0, "circle");
  paleta= new Paleta ( "estrucsPic.jpg");
  estruc = new FPoly();
 
  
}

void draw() {
  background(255);
  world.step();
  world.draw();
  if (debug.GetActive()) debug.ShowStats(world.getBodies());
   
   if (estruc != null) {
    estruc.draw(this);
  }
}

void keyPressed() {
  switch(key) {
  case 'b':
    boolean active = debug.GetActive();
    debug.SetActive(!active);
    break;
  }
}

void mousePressed() {
  switch(mouseButton) {
  case LEFT:
    float d = dist(mouseX, mouseY, circle.getX(), circle.getY());
    float p = map(d, 0, width, 0, 1500);
    circle.addImpulse(p, -1000);
    break;
  }
  
   if (world.getBody(mouseX, mouseY) != null) {
    return;
  }
    
  estruc.setStrokeWeight(3);
  estruc.setFill(255,0,0);
  estruc.getFillColor();
  estruc.setDensity(10);
  estruc.setRestitution(0.5);

   
   println(estruc);
  
}
void mouseDragged() {
  if (estruc!=null) {
    estruc.vertex(mouseX, mouseY);
  }
}

void mouseReleased() {
  if (estruc!=null) {
    world.add(estruc);
    estruc = null;
  }
}
