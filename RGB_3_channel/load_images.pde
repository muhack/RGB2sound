import java.util.Map;
HashMap<String,String> pixel = new HashMap<String,String>();
String [] url={"../sample/sample_red.png","../sample/sample_green.png","../sample/sample_blue.png"};
PImage[] type=new PImage[3];
int[] size=new int[3];
int index_type=0,index_pixel=0;

void load_images_to_pixel(){
  for(index_type=0;index_type<3;index_type++){
    type[index_type]=loadImage(url[index_type]);
    size[index_type]=type[index_type].width*type[index_type].height;
    type[index_type].loadPixels();
  }
  for(index_type=0;index_type<type.length;index_type++){
    type[index_type].loadPixels();
    for(index_pixel=0;index_pixel<size[index_type];index_pixel++){
      pixel.put(index_type+"_"+index_pixel,load_images_string_to_rgba(type[index_type].pixels[index_pixel]+""));
    }
  }
}

void load_images_print(){
  // Using an enhanced loop to interate over each entry
  for (Map.Entry tmp : pixel.entrySet()) {
    println("["+tmp.getKey() + "]="+tmp.getValue());
  }
}

String load_images_string_to_rgba(String tmp){
  return Integer.toHexString(Integer.parseInt(tmp));
}