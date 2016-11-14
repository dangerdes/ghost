PFont booFont;

Ghost g;

void setup() {
  size(500, 500, P2D);
  g = new Ghost();
  booFont = createFont("Verdana-BoldItalic", 60);
}

void draw() {
  background(#385C76);
  g.display();
  fill(#FA2C03);
  translate(mouseX-250, mouseY-250);
  text("BOO!", 110, 115);
}