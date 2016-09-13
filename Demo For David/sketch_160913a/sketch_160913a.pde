class Obj {
  
  public int x, y, velX, velY;
   
  Obj(int x, int y) {
    this.x = x;
    this.y = y;
    
    velX = 1;
    velY = 1;
  }
  
  void update() {
    x =+ velX;
    y =+ velY;
  }
  
  void display() {
    ellipse(x, y, 100, 100);
  }
}

ArrayList elipseList;

void setup() {
  elipseList = new ArrayList<Obj>();
  elipseList.add(new Obj(width/2, height/2));
}

void draw() {
  for (int i = 0; i < elipseList.size(); i++) {
    elipseList.get(i)
  }
}