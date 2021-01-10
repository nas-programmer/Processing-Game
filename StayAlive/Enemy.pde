import java.util.Random;

class Enemy extends Entity {
  Random random = new Random();

  boolean touching = false;

  int health = 100;
  float index = 0;

  Enemy(float x, float y, int w, int h, ObjectHandler objectHandler, Sprites sprites) {
    super(x, y, w, h, ObjectID.ENEMY, objectHandler, sprites);
  }

  void update() {
    tryAdvance();

    int choose = random.nextInt(10);
    if (choose == 0) {
      xVel = (random.nextInt(8) - 4);
      yVel = (random.nextInt(8) - 4);
    }
    index+=.1;
  }

  void draw() {
    image(sprites.getEnemy()[floor(index)%2], x, y);
    if(index > 100) index = 0;
  }

  void hit() {
    health -= 20;
    if (health <= 0) {
      objectHandler.removeEntity(this);
    }
  }

  void onCollision(Entity entity) {
    if (!touching && entity.objectId == ObjectID.PLAYER) {
      ((Player)entity).hit();
      touching = true;
    } else {
      touching = false;
    }
  }
}
