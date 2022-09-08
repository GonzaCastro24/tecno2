class World extends FWorld
{
  World() {
    super();
    this.setEdges(250);
  }
  
  public void Add(FBody[] bodys){
    for(FBody body : bodys){
      this.addBody(body);
    }
  }
  
  public void Add(FBody body){
    this.addBody(body);
  }
}
