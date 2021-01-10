class Player extends Entity {
  final InputHandler inputHandler;

  int speed = 5;
  PImage[] currPos;
  int ammo = 100;
  int health = 100; 
  float index = 0;
  boolean finish;

  Player(float x, float y, int w, int h, ObjectHandler objectHandler, InputHandler inputHandler, Sprites sprites) {
    super(x, y, w, h, ObjectID.PLAYER, objectHandler, sprites);
    this.inputHandler = inputHandler;
  }

  void update() {    
    tryAdvance();
    currPos = sprites.getPlayer()[0];
    if (inputHandler.up) {
      yVel = -speed;
      currPos = sprites.getPlayer()[2];
    }
    else if (!inputHandler.down) yVel = 0;

    if (inputHandler.down) yVel = speed;
    else if (!inputHandler.up) yVel = 0;

    if (inputHandler.right) xVel = speed;
    else if (!inputHandler.left) xVel = 0;

    if (inputHandler.left){
      xVel = -speed;
      currPos =sprites.getPlayer()[1];
    }
    else if (!inputHandler.right) xVel = 0;
    index+=.1;
  }

  void draw() {
    image(currPos[floor(index)%currPos.length], x, y);
    if(index > 100) index = 0;
  }

  void onCollision(Entity entity) {
    if (entity.objectId == ObjectID.CRATE) {
      ammo += ((Crate) entity).ammo;
      ((Crate) entity).empty = true;
      ((Crate) entity).img = 1;
    }
    if (entity.objectId == ObjectID.POTION) {
      health += ((Potion) entity).health;
      objectHandler.removeEntity(entity);
    }
    if (entity.objectId == ObjectID.STAIRS) {
      this.x = ((Stairs)entity).other.x + 32*(Integer.signum(this.xVel));
      this.y = ((Stairs)entity).other.y + 32*(Integer.signum(this.yVel));
    }
    if (entity.objectId == ObjectID.EXITDOOR) {
      if(((Exit)entity).doorSp == 1) finish = true;
      ((Exit)entity).doorSp = 1;
      
    }
  }

  void hit() {
    health -= 1;
  }

  void fire(float mouseX, float mouseY) {
    if (ammo > 0) {
      float bulletXPosition = x + w / 2;
      float bulletYPosition = y + h / 2;
      float targetXPosition = mouseX;
      float targetYPosition = mouseY;
      objectHandler.addBullet(bulletXPosition, bulletYPosition, 8, 8, targetXPosition, targetYPosition);
      ammo--;
    }
  }
}
