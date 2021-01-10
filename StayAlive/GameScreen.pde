class GameScreen extends Screen {

  GameScreen(Consumer<Integer> changeScreen, ObjectHandler objectHandler, Camera camera) {
    super(changeScreen, objectHandler, camera);
  }

  void update() {
    objectHandler.update();
    camera.update(objectHandler.player);
    if (objectHandler.player.health <= 0) {
      changeScreen.accept(2);
      return;
    }
    if (objectHandler.player.finish) {
      try{
        Thread.sleep(500);
      }
      catch(InterruptedException ex){
        Thread.currentThread().interrupt();
      }
      changeScreen.accept(3);
      return;
    }
  }

  void draw() {
    background(0);
    translate(-camera.x, -camera.y);
    objectHandler.draw();
    translate(camera.x, camera.y);
    fill(208);
    rect(0, 0, 200, 32);
    fill(0);
    textSize(14);
    text("Bullets: " + objectHandler.player.ammo + ", Health: " + objectHandler.player.health, 15, 20);
  }

  void fire(MouseEvent event) {
    objectHandler.player.fire(event.getX() + camera.x, event.getY() + camera.y);
  }
}
