//week15-3
PGraphics pg, pg2, pg3, pg4;
void setup() {
  size(400, 400, P3D);
  pg = createGraphics(200, 200, P3D);
  pg2 = createGraphics(200, 200, P3D);
  pg3 = createGraphics(200, 200, P3D);
  pg4 = createGraphics(200, 200, P3D);
}

void draw() {
  background(255, 0, 0); // 紅色的大背景

  // 第一塊 - 綠色
  pg.beginDraw();
  pg.background(0, 255, 0);
  pg.translate(100, 100);
  pg.rotateY(radians(frameCount));
  pg.box(100);
  pg.endDraw();

  // 第二塊 - 黃色
  pg2.beginDraw();
  pg2.background(255, 255, 0);
  pg2.translate(100, 100);
  pg2.rotateY(radians(frameCount));
  pg2.box(100);
  pg2.endDraw();

  // 第三塊 - red色
  pg3.beginDraw();
  pg3.background(255, 0,0);
  pg3.translate(100, 100);
  pg3.rotateY(radians(frameCount));
  pg3.box(100);
  pg3.endDraw();

  // 第四塊 - 粉紫色
  pg4.beginDraw();
  pg4.background(255, 0, 255);
  pg4.translate(100, 100);
  pg4.rotateY(radians(frameCount));
  pg4.box(100);
  pg4.endDraw();

  // 將四塊畫出來
  image(pg, 0, 0);
  image(pg2, 200, 0);
  image(pg3, 0, 200);
  image(pg4, 200, 200);
}
