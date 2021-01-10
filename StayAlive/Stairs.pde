class Stairs extends Entity {
  
  int upDown, imgPos;
  boolean touching = false;
  Stairs other;
  List<Stairs> stairList;
  
  Stairs(float x, float y, int w, int h, ObjectHandler objectHandler, Sprites sprites, int upDown, List<Stairs> stairList) {
    super(x, y, w, h, ObjectID.STAIRS, objectHandler, sprites);
    this.upDown = upDown;
    this.stairList = stairList;
    this.stairList.add(this);
    
    setOther();
  }
  
  void setOther(){
    if(stairList.size() == 2){
      stairList.get(0).other = stairList.get(1);
      stairList.get(1).other = stairList.get(0);
    }
  }
  
  void update() {
    tryAdvance();
  }

  void draw() {
    if(this == stairList.get(0)) imgPos = 0;
    else imgPos = 1;
    image(sprites.getStairs()[imgPos], x, y);
  }

  void onCollision(Entity entity) {
  }
  
  
  void hit() {
  }
}
