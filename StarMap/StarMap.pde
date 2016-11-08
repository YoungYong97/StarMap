/* Name: Yonghui Huang
   Student No.: C15335771 
*/

//
ArrayList<Star> star = new ArrayList<Star>();
Table starTable;

void setup()
{
  size(800,800);
  
  starTable= new Table();
  
  starTable.addColumn("Hab?", Table.FLOAT);
  starTable.addColumn("DisplayName", Table.STRING);
  starTable.addColumn("Distance", Table.FLOAT);
  starTable.addColumn("Xg", Table.FLOAT);
  starTable.addColumn("Yg", Table.FLOAT);
  starTable.addColumn("Zg", Table.FLOAT);
  starTable.addColumn("AbsMag", Table.FLOAT);
  
  TableRow rows = starTable.addRow();
  for(String line: lines)
  {
    Star stars = new Star(line);
    star.add(stars);
  }
  
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