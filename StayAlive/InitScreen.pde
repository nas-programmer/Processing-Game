class InitScreen extends Screen {

  InitScreen(Consumer<Integer> changeScreen, ObjectHandler objectHandler, Camera camera) {
    super(changeScreen, objectHandler, camera);
    BG = loadImage("StartBG.png");
  }

  void update() {
  }

  void draw() {
    background(0);
    image(BG, 0, 0);
  }
}
