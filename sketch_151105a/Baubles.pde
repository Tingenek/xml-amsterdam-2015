class Baubles {
HashMap hm = new HashMap();
color c = color(220, 20, 60);
  
Baubles () {
  hm.put("red", color(#FF0000));
  hm.put("green", color(#008000));
  hm.put("blue", color(#0000FF));
  hm.put("cyan", color(#00FFFF));
  hm.put("white", color(#FFFFFF));
  hm.put("warmwhite", color(#FDF5E6));
  hm.put("purple", color(#800080));
  hm.put("magenta", color(#FF00FF));
  hm.put("yellow", color(#FFFF00));
  hm.put("orange", color(#FFA500));
  hm.put("pink", color(#ffc0cb));
  hm.put("black", color(#000000));
}  
  
void update() {
  //draw baubles down the tree
  stroke(255);
  fill(c); 
  ellipse(298, 140, 10, 10);
  ellipse(270, 174, 10, 10);
  ellipse(348, 177, 10, 10);
  ellipse(364, 223, 10, 10);
  ellipse(257, 219, 10, 10);
  ellipse(260, 273, 10, 10);
  ellipse(335, 236, 10, 10);
  ellipse(379, 267, 10, 10);
  ellipse(374, 315, 10, 10);
  ellipse(282, 323, 10, 10);
  ellipse(230, 324, 10, 10);
  fill(255);
}

void change(String s) {
  try {
  c = (Integer) hm.get(s);
  } catch (Exception e) {
    println("Can't get colour " + s);
  }  
}

String getnew() {
  String[] s;
  String result ="red";
     try {
      s=loadStrings("http://api.thingspeak.com/channels/1417/field/1/last.txt");
      println(s[0]);
      result = s[0];
    } 
    catch (Exception e) {
      println(e);
    } 
 return result;   
}


}