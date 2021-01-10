void loadMap(int[] pixels, int w, int h, int tw, int th, ObjectHandler handler) {
  for (int x = 0; x < w; x++) {
    for (int y = 0; y < h; y++ ) {
      int loc = x + y * w;
      float c = pixels[loc];
      
      if (c == 0xFFFF0000) {
        handler.addBlock(x * tw, y * th, tw, th, 0);
      }
      else if (c == 0xFF99D9EA) {
        handler.addBlock(x * tw, y * th, tw, th, 1);
      }
      else if (c == 0xFFFFAEC9) {
        handler.addBlock(x * tw, y * th, tw, th, 2);
      }
      else if (c == 0xFFA349A4) {
        handler.addBlock(x * tw, y * th, tw, th, 3);
      }
      else if (c == 0xFFB97A57) {
        handler.addBlock(x * tw, y * th, tw, th, 4);
      }
      else if (c == 0xFF0000FF) {
        handler.setPlayer(x * tw, y * th, tw, th);
      }
      else if (c == 0xFFFFF200) {
        handler.addStair(x * tw, y * th, tw, th, 0, handler.stair1);
      }
      else if (c == 0xFFEFE4B0) {
        handler.addStair(x * tw, y * th, tw, th, 0, handler.stair1);
      }
      else if (c == 0xFFB5E61D) {
        handler.addStair(x * tw, y * th, tw, th, 1, handler.stair2);
      }
      else if (c == 0xFF7F7F7F) {
        handler.addStair(x * tw, y * th, tw, th, 1, handler.stair2);
      }
      else if (c == 0xFF00A2E8) {
        handler.addDoor(x * tw, y * th, tw, th);
      }
      else if (c == 0xFF00FF00) {
        handler.addEnemy(x * tw, y * th, tw, th);
      }
      else if (c == 0xFFFF00FF) {
        handler.addCrate(x * tw, y * th, tw, th);
      }
      else if (c == 0xFFFFFFFF) {
        handler.addPotion(x * tw, y * th, tw, th);
      }
    }
  }
}
