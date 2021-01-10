class Sprites {
  final PImage[][] sprites;

  Sprites(String path, int tileSize) {
    sprites = loadSprites(path, tileSize);
  }

  PImage[] getCrate() {
    PImage[] crate = {sprites[2][4], sprites[3][4]};
    return crate;
  }

  PImage[] getEnemy() {
    PImage[] enemies = {sprites[4][0], sprites[4][1]}; 
    return enemies;
  }
  
  PImage[] getExit() {
    PImage[] exit = {sprites[0][4], sprites[1][4]}; 
    return exit;
  }
  
  PImage[] getStairs() {
    PImage[] stair = {sprites[4][2], sprites[4][3]}; 
    return stair;
  }

  PImage getBlock(int i) {
    PImage[] blocks = {sprites[0][1], sprites[0][0], sprites[1][0], sprites[2][0], sprites[3][0]};
    return blocks[i];
  }

  PImage getPotion() {
    return sprites[2][2];
  }
  
  PImage getKey(){
    return sprites[4][4];
  }

  PImage[][] getPlayer() {
    PImage[][] player = {{sprites[1][1], sprites[2][1]}, 
                         {sprites[2][3], sprites[3][3]}, 
                         {sprites[0][3], sprites[1][3]}};
    return player;
  }

  PImage[][] loadSprites(String path, int tileSize) {
    PImage spriteBlock = loadImage(path);
    PImage[][] sprites = new PImage[spriteBlock.width / tileSize][spriteBlock.height / tileSize];
    for (int x = 0; x < spriteBlock.width / tileSize; x ++) {
      for (int y = 0; y < spriteBlock.height / tileSize; y ++) {
        sprites[x][y] = spriteBlock.get(tileSize * x, tileSize * y, tileSize, tileSize);
      }
    }
    return sprites;
  }
}
