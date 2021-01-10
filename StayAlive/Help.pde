class Help extends Screen {


  Help(Consumer<Integer> changeScreen, ObjectHandler objectHandler, Camera camera) {
    super(changeScreen, objectHandler, camera);
    BG = loadImage("Help.png");
  }

  void update() {
  }

  void draw() {
    image(BG, 0, 0);
  }
}
