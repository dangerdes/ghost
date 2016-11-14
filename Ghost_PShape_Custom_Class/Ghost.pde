// A class to describe a Star shape

class Ghost {

  // The PShape object
  PShape g, h, b, f1, f2, f3, f4, f5, e1, e2, p1, p2, m, t, hl1, hl2, wb1, wb2;

  float x, y; // The location where we will draw the shape
  float speed;

  Ghost() {
    x = 250;
    y = 250;
    speed = random(0.5, 3);
    
    g = createShape(GROUP); // First establish the "whole" parent shape called 'g'
    
    beginShape(); // Make individual child shapes that will make up shape 'g'
    noStroke();
    fill(#B8EAF0);
    h = createShape(ELLIPSE, 250, 200, 100, 100); // Head
    e1 = createShape(ELLIPSE,230,215,20,20); //Left Eye
    e1.setFill(color(#FFFBCB));
    e2 = createShape(ELLIPSE,270,215,20,20); //Right Eye
    e2.setFill(color(#FFFBCB));
    p1 = createShape(ELLIPSE,232,220,8,8); //Left Pupil
    p1.setFill(color(#3B62B2));
    p2 = createShape(ELLIPSE,272,220,8,8); //Right Pupil
    p2.setFill(color(#3B62B2));
    hl1 = createShape(ELLIPSE,230,220,4,4); //Left Highlight
    hl1.setFill(color(255));
    hl2 = createShape(ELLIPSE,270,220,4,4); //Right Highlight
    hl2.setFill(color(255));
    b = createShape(RECT, 200, 200, 100, 125); //Body
    f1 = createShape(TRIANGLE, 200, 325, 210, 345, 220, 325); //Feet
    f2 = createShape(TRIANGLE, 220, 325, 230, 345, 240, 325);
    f3 = createShape(TRIANGLE, 240, 325, 250, 345, 260, 325); 
    f4 = createShape(TRIANGLE, 260, 325, 270, 345, 280, 325);
    f5 = createShape(TRIANGLE, 280, 325, 290, 345, 300, 325); 
    noStroke();
    fill(#FCB6AB);
    t = createShape(ELLIPSE, 250, 260, 25, 50); //Tongue
    stroke(color(#DE3128));
    fill(#B8EAF0);
    strokeWeight(3);
    m = createShape(ARC,250, 220, 80, 80,  0.5, PI-0.5); //Mouth
    
    //Word Bubble
    fill(255);
    noStroke();
    wb1 = createShape(ELLIPSE, 125,110,150,100);
    wb2 = createShape(TRIANGLE, 170,140,200,150,175,100);
    
    endShape(CLOSE);
    
    g.addChild(b);  // Add the "child" shapes to the parent group
    g.addChild(h);
    g.addChild(e1);
    g.addChild(e2);
    g.addChild(p1);
    g.addChild(hl1);
    g.addChild(p2);
    g.addChild(hl2);
    g.addChild(f1);
    g.addChild(f2);
    g.addChild(f3);
    g.addChild(f4);
    g.addChild(f5);
    g.addChild(t);
    g.addChild(m);
    g.addChild(wb1);
    g.addChild(wb2);
  }

  void move() {
    // Demonstrating some simple motion
    x += speed;
    if (x > width+100) {
      x = -100;
    }
  }

  void display() {
    // Locating and drawing the shape
    pushMatrix();
    translate(mouseX-250, mouseY-250);
    shape(g);
    popMatrix();
  }
}