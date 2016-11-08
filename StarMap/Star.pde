class Star
{
  float Hab; // Habitability flag 1 = star has a high probability of hosting a human habitable planet
  String DisplayName; // The name of the star
  float Distance; // Distance from the sun in parsecs
  float Xg, Yg, Zg; // xyz galactic cartesian co-ordinates in parsecs (used to draw the star map)
  float AbsMag; // Star's size


  Star(String lines)
  {
    String[] fields = lines.split(",");
    Hab = Float.parseFloat(fields[2]);
    DisplayName = fields[3];
    Distance = Float.parseFloat(fields[12]);
    Xg = Float.parseFloat(fields[13]);
    Yg = Float.parseFloat(fields[14]);
    Zg = Float.parseFloat(fields[15]);
    AbsMag = Float.parseFloat(fields[16]);
  }
  
}