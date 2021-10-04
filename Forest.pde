import java.util.*; 

class Tree { 
  int treeHeight;
  int diameter;
  int x1, y1; 
  int x2, y2;
  int xPos, yPos;
  
  Tree(int heightTemp, int diameterTemp) { 
    treeHeight = heightTemp;
    diameter = diameterTemp;
  }

  void drawOldTree() {
    noStroke();
    fill(0, 0, 0, 10);
    rect(xPos - (diameter / 2), yPos, diameter, treeHeight);
    fill(0, 0, 0, 10);
    ellipse(xPos, yPos - treeHeight, treeHeight * 2, treeHeight * 2);
  }
  
  void draw(int x, int y) {
    noStroke();
    fill(148, 89, 0);
    rect(x - (diameter / 2), y, diameter, treeHeight);
    fill(82, 235, 0);
    ellipse(x, y - treeHeight, treeHeight * 2, treeHeight * 2); 
    
    x1 = x - (diameter * 2);
    y1 = y - treeHeight * 2;
    x2 = x + diameter * 2 + treeHeight;
    y2 = y + treeHeight * 2 + diameter * 2;
    xPos = x;
    yPos = y;
  }
}

final int MIN_TREE_HEIGHT = 10; 
final int MAX_TREE_HEIGHT = 40;

Random rand = new Random();

void setup() {
  frameRate(10);
  background(255);
  size(1000, 1000);
}

void draw() {
  int treeHeight = rand.nextInt((MAX_TREE_HEIGHT - MIN_TREE_HEIGHT) + 1) + MIN_TREE_HEIGHT;
  Tree tree = new Tree(treeHeight, treeHeight / 2);
  tree.draw(rand.nextInt(800) + 100, rand.nextInt(800) + 100);
}
