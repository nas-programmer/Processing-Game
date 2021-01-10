import java.util.List; //<>// //<>//
import java.util.ArrayList;

class ObjectHandler {

  List<Entity> entities = new ArrayList<Entity>();
  List<Stairs> stair1 = new ArrayList<Stairs>();
  List<Stairs> stair2 = new ArrayList<Stairs>();
  Player player = null;
  InputHandler inputHandler;
  Sprites sprites;


  ObjectHandler(InputHandler inputHandler, Sprites sprites) {
    this.inputHandler = inputHandler;
    this.sprites = sprites;
  }

  void addBlock(int x, int y, int w, int h, int blockSp) {
    Block block = new Block(x, y, w, h, this, sprites, blockSp);
    entities.add(block);
  }
  
  void addDoor(int x, int y, int w, int h) {
    Exit door = new Exit(x, y, w, h, this, sprites);
    entities.add(door);
  }

  void addPotion(int x, int y, int w, int h) {
    Potion potion = new Potion(x, y, w, h, this, sprites);
    entities.add(potion);
  }

  void addEnemy(int x, int y, int w, int h) {
    Enemy enemy = new Enemy(x, y, w, h, this, sprites);
    entities.add(enemy);
  }

  void addCrate(int x, int y, int w, int h) {
    Crate enemy = new Crate(x, y, w, h, this, sprites);
    entities.add(enemy);
  }
  
  void addStair(int x, int y, int w, int h, int level, List<Stairs> stairList) {
    Stairs stair = new Stairs(x, y, w, h, this, sprites, level, stairList);
    entities.add(stair);
  }

  void addBullet(float x, float y, int w, int h, float mouseX, float mouseY) {
    Bullet bullet = new Bullet(x, y, w, h, this, sprites, mouseX, mouseY);
    entities.add(bullet);
  }

  void setPlayer(int x, int y, int w, int h) {
    player = new Player(x, y, w, h, this, inputHandler, sprites);
    entities.add(player);
  }

  void removeEntity(Entity entity) {
    entities.remove(entity);
  }

  void update() {
    List<Entity> objects = entities;
    for (int i = 0; i < objects.size(); i++) {
      if (i >= objects.size()) {
        break;
      }
      objects.get(i).update();
    }
  }

  void draw() {
    List<Entity> objects = entities;
    for (int i = 0; i < objects.size(); i++) {
      if (i >= objects.size()) {
        break;
      }
      objects.get(i).draw();
    }
  }
}
