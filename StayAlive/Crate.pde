class Crate extends Entity {
  int ammo = 30;
  int img = 0;
  boolean empty = false;

  Crate(float x, float y, int w, int h, ObjectHandler objectHandler, Sprites sprites) {
    super(x, y, w, h, ObjectID.CRATE, objectHandler, sprites);
  }

  void update() {
    if(empty) ammo = 0;
    else ammo = 30;
  }

  void draw() {
    image(sprites.getCrate()[img], x, y);
  }

  void onCollision(Entity crate) {
  }
}
