class Bullet extends Entity { //<>// //<>//
  double speed = 10.0;

  Bullet(float x, float y, int w, int h, ObjectHandler objectHandler, Sprites sprites, float mouseX, float mouseY) {
    super(x, y, w, h, ObjectID.BULLET, objectHandler, sprites);
    double angle = Math.atan2(mouseY - y, mouseX - x);
    xVel = (int) (speed * Math.cos(angle));
    yVel = (int) (speed * Math.sin(angle));
  }

  void update() {
    x += xVel;
    y += yVel;
    Entity entity = getCollidingEntity();
    if (entity instanceof Block) {
      hit();
    }
    if (entity instanceof Enemy) {
      ((Enemy)entity).hit();
      hit();
    }
  }

  void draw() {
    fill(255, 255, 255);
    ellipse(x, y, w, h);
  }

  void hit() {
    objectHandler.removeEntity(this);
  }

  void onCollision(Entity entity) {
  }
}
