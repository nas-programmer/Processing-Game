class Block extends Entity {
  
  int blockSp;
  
  Block(float x, float y, int w, int h, ObjectHandler objectHandler, Sprites sprites, int blockSp) {
    super(x, y, w, h, ObjectID.BLOCK, objectHandler, sprites);
    this.blockSp = blockSp;
  }

  void update() {
  }

  void draw() {
    image(sprites.getBlock(blockSp), x, y);
  }

  void onCollision(Entity crate) {
  }

  void hit() { //<>// //<>//
  }
}
