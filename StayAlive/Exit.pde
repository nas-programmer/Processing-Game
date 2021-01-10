class Exit extends Entity {
  
  int doorSp = 0;
  PImage currImg;
  Exit(float x, float y, int w, int h, ObjectHandler objectHandler, Sprites sprites) {
    super(x, y, w, h, ObjectID.EXITDOOR, objectHandler, sprites);
    //this.doorSp = doorSp;
  }

  void update() {
    currImg = sprites.getExit()[doorSp];
  }

  void draw() {
    image(currImg, x, y);
  }

  void onCollision(Entity entity) {
  }

  void hit() { //<>//
  }
}
