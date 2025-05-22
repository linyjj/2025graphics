// week14_3_ik_inverse_kinematics_???
void setup() {
  size(400, 400); // 先用 2D
}
float[] angle = new float[5]; // 有 5 個關節
void draw() {
  background(255);
  translate(200, 350); // 放下畫面一點
  ellipse(0, 0, 12, 12); // 在 (0,0) 畫圓代表起點
  pushMatrix();
  rotate(radians(angle[0])); // 第一節：對 Z 軸旋轉
  rect(0, -5, 50, 10);       // 畫一根棒子
  pushMatrix();
  translate(50, 0);           // 第二節：移動到第一節尾端
  rotate(radians(angle[1]));  // 第二節旋轉
  rect(0, -5, 50, 10);        // 畫第二根棒子
  popMatrix();
  popMatrix();
}
void mouseDragged() {
  angle[ID] += mouseX - pmouseX;
}
int ID = 0;
void keyPressed() {
  if (key == '0') ID = 0;
  if (key == '1') ID = 1;  // 小心注意輸入法
}
