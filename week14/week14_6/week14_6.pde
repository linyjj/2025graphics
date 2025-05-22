// week14_5_ik_inverse_kinematics_part3
// 用簡單的線段，來解真的 ID 的運算

PVector[] p = new PVector[6]; // 有 6 個頂點

void setup() {
  size(400, 400);
  for (int i = 0; i < 2; i++) { // 把頂點從下到上放好（目前只放了前 2 個）
    p[i] = new PVector(200, 350 - 50 * i);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 2; i++) { // 用迴圈畫圓、畫點、畫字
    if (i > 0) line(p[i - 1].x, p[i - 1].y, p[i].x, p[i].y);
    
    fill(255, 0, 0); // 紅色的圓圈
    ellipse(p[i].x, p[i].y, 8, 8);

    fill(0); // 黑色的字
    text("p:" + i, p[i].x + 10, p[i].y);
  }

  // 滑鼠也有 1 個小圓，要控制與虛標移動
  ellipse(mouseX, mouseY, 6, 6);
  line(p[0].x, p[0].y, mouseX, mouseY);
}
