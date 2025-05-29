// week15_01_multiple_windows
// google: processing multiple windows
// File > Examples > Demos > Tests > MultipleWindows

void setup() {
  size(300, 200); // 小的第一個視窗
  background(255, 0, 0);
  WindowB child = new WindowB(); // 開啟 WindowB 視窗
}

void draw() {
}

// 以下會獨立執行
class WindowB extends PApplet {
  public WindowB() { // 建構子 constructor
    super();
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  public void settings() {
    size(200, 200);
  }

  public void setup() {
    //size(200, 200);
    background(0, 255, 0);
  }

  public void draw() {
  }
}
