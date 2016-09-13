import peasy.*;

PeasyCam cam;
float x, y, z;
float r;

ArrayList<HashMap<String, Float>> data;
  
BufferedReader reader;
String line;

void setup() {
  print("CANVAS SETUP");
  size(640, 360, P3D); 
  background(0);
  println(" ... Compleate");
  print("READING FILE ...");
  reader = createReader("/Users/Miles/Downloads/bunny/reconstruction/bun_zipper_res4.ply");
  try {
     if (!reader.readLine().equals("ply")) 
       throw new ReaderError();
     
     if (!reader.readLine().equals("format ascii 1.0")) 
       throw new ReaderError();
       
     Boolean in_header = true;
     data = new ArrayList<HashMap<String, Float>>();
       
     while (in_header) {
         String[] strline = reader.readLine().split(" ");
         String keyword = strline[0];
         switch (keyword) {
             case "element": {
               Boolean in_element = true;
               element(strline);
               
             }
         }
     }
       
  } catch(ReaderError e) {
    println(" ... ERROR ON READ");
    return;
  } catch (Exception e) {
     e.printStackTrace(); 
  } finaly {
    println(" ... Compleate");
  }
}

void draw() {
  
}

class ReaderError extends Exception {}

void element(String[] strline) {
  data.add(new HashMap<String, Float>());
}