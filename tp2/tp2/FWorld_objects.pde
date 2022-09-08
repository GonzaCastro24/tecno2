class Circle extends FCircle {
   Circle(int size, int x, int y, String name){
      super(size); 
      this.setBullet(true);
      this.setGrabbable(false);
      this.setPosition(x,y);
      this.setDensity(.40);
      this.setName(name);
      this.setFill(255,0,0);
   }
}
