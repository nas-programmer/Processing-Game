class WinScreen extends Screen {

  WinScreen(Consumer<Integer> changeScreen, ObjectHandler objectHandler, Camera camera) {
    super(changeScreen, objectHandler, camera);
    BG = loadImage("WinBG.png");
  }

  void update() {
  }

  void draw() {
    image(BG, 0, 0);
  }
}
