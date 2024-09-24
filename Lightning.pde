int x = 0;
int y = -1;

void setup() {
  size(400,400);
  background(0);
  stroke(255);
}

void draw() {
  if (y > 400 || y < 0) {
    fill(0, 30);
    rect(-1, -1, 401, 401);
    fill(255);
    text("Press to summon lightening strike", 120, 200);
    return;
  }
   
  int xOffset = (int) random(-20, 20);
  int yOffset = (int) random(10, 30);
  line(x, y, x+xOffset, y+yOffset);
  x += xOffset;
  y += yOffset;
}

void mousePressed() {
  background(0);
  y = 0;
  x = (int) random(100,300); 
}
