class GameOverScreen extends Screen {


  GameOverScreen(Consumer<Integer> changeScreen, ObjectHandler objectHandler, Camera camera) {
    super(changeScreen, objectHandler, camera);
    BG = loadImage("LoseBG.png");
  }

  void update() {
  }

  void draw() {
    image(BG, 0, 0);
  }
}
