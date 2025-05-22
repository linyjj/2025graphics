// week14_7_ik_inverse_kinematics_part3
// 用簡單的線段，來解真的 ID 的運算

PVector[] p = new PVector[6]; // 有 6 個頂點

void setup() {
  size(400, 400);
  for (int i = 0; i < 2; i++) { // 把頂點從下到上放好（目前只有前兩節）
    p[i] = new PVector(200, 350 - 50 * i);
  }
}

void draw() {
  background(255);
  
  // 畫出骨架與點位
  for (int i = 0; i < 2; i++) {
    if (i > 0) line(p[i - 1].x, p[i - 1].y, p[i].x, p[i].y);
    
    fill(255, 0, 0); // 紅點
    ellipse(p[i].x, p[i].y, 8, 8);
    
    fill(0); // 黑字
    text("p:" + i, p[i].x + 10, p[i].y);
  }

  // 滑鼠位置處理（目標點）
  PVector now = new PVector(mouseX, mouseY); // 現在的滑鼠位置
  PVector v = PVector.sub(now, p[0]).normalize().mult(50); // p[0] 指向滑鼠方向，長度設為 50

  // 更新 p[1] 的位置（使 p[1] 剛好在指向滑鼠的方向上，且長度為 50）
  p[1].x = p[0].x + v.x;
  p[1].y = p[0].y + v.y;

  // 滑鼠上的圓與目標線
  ellipse(mouseX, mouseY, 6, 6); // 滑鼠上畫圓
  line(p[0].x, p[0].y, mouseX, mouseY); // 補助線
}
