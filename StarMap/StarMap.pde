/* Name: Yonghui Huang
   Student No.: C15335771 
*/

//
ArrayList<Star> star = new ArrayList<Star>();
Table starTable;

void setup()
{
  size(800,800);
  background(0);
  drawGrid();
  
  starTable= new Table();
  
  starTable.addColumn("Hab?", Table.FLOAT);
  starTable.addColumn("DisplayName", Table.STRING);
  starTable.addColumn("Distance", Table.FLOAT);
  starTable.addColumn("Xg", Table.FLOAT);
  starTable.addColumn("Yg", Table.FLOAT);
  starTable.addColumn("Zg", Table.FLOAT);
  starTable.addColumn("AbsMag", Table.FLOAT);
  
  TableRow rows = starTable.addRow();
  /*for(int i; i < stars.line; i +=50)
  {
    Star stars = new Star(line);
    star.add(stars);
  }*/
  //loadData();
}


void draw()
{
  
}

void loadData()
{
  String[] lines = loadStrings("stars.csv");
  for(String line: lines)
  {
    Star stars = new Star(line);
    star.add(stars);
  }
}

void drawGrid()
{
  stroke(255,0,255);
  line(50,50,50,750);
  line(50,750,750,750);
  line(750,750,750,50);
  line(750,50,50,50);
  
  for(int i = 0; i < width; i += 50)
  {
    line(i,50,i,750);
  }
  for(int i = 0; i < height; i += 50)
  {
    line(50,i,750,i);
  }
}

void drawStars()
{
  stroke(255,255,0);
  for(int i = 0; i < lines.length; i ++)
  {
    line(Xg[i]-5,Yg[i]-5,Xg[i]+5,Yg[i]+5);
    line(Xg[i]-5,Yg[i]+5,Xg[i]+5,Yg[i]-5);
    
  }
}