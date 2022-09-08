class Debug {
  private boolean active;

  Debug() {
    this.active = false;
  }

  public void ShowStats(ArrayList<FBody> bodys) {
    println("FPS: ", frameRate);
    stroke(250, 0, 0);
    for (FBody body : bodys) {
      float x = body.getX();
      float y = body.getY();
      strokeWeight(.5);
      point(x, y);
      line(x, 0, x, height);
      line(0, y, width, y);
      if (body.getName() != null)
        text("X: " + x + "\nY: " + y, x - 30, y - 50);
    }
    stroke(0);
    strokeWeight(.1);
    line(width/2, 0, width/2, height);
    line(0, height/2, width, height/2);
  }

  public boolean GetActive() {
    return this.active;
  }

  public void SetActive(boolean active) {
    this.active = active;
  }
}
