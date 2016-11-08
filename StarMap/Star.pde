class Star
{
  float Hab; // Habitability flag 1 = star has a high probability of hosting a human habitable planet
  String DisplayName; // The name of the star
  float Distance; // Distance from the sun in parsecs
  float Xg, Yg, Zg; // xyz galactic cartesian co-ordinates in parsecs (used to draw the star map)
  float AbsMag; // Star's size


  Star(String lines)
  {
    String[] parts = lines.split(",");
    Hab = Float.parseFloat(parts[2]);
    DisplayName = parts[3];
    Distance = Float.parseFloat(parts[12]);
    Xg = Float.parseFloat(parts[13]);
    Yg = Float.parseFloat(parts[14]);
    Zg = Float.parseFloat(parts[15]);
    AbsMag = Float.parseFloat(parts[16]);
  }
  
}