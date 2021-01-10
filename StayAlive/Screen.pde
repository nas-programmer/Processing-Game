import java.util.function.Consumer;

abstract class Screen {

  ObjectHandler objectHandler;
  Consumer<Integer> changeScreen;
  Camera camera;
  PImage BG;

  Screen(Consumer<Integer> changeScreen, ObjectHandler objectHandler, Camera camera) {
    this.changeScreen = changeScreen;
    this.objectHandler = objectHandler;
    this.camera = camera;
  }

  abstract void update();
  abstract void draw();
}
