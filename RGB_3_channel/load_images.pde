import java.util.Map;
HashMap<String,String> pixel = new HashMap<String,String>();
PImage[] type=new PImage[3];
int[] size=new int[3];

void load_images_to_pixel(){
  int index_type=0,index_pixel=0;
  type[0]=loadImage("../sample/sample_green.jpg");
  type[1]=loadImage("../sample/sample_green.jpg");
  type[2]=loadImage("../sample/sample_blue.jpg");
  for(int i=0;i<3;i++){
    size[i]=type[i].width*type[i].height;
  }
  for(index_type=0;index_type<type.length;index_type++){
    type[index_type].loadPixels();
    for(index_pixel=0;index_pixel<size[index_type];index_pixel++){
      pixel.put(index_type+"_"+index_pixel,""+type[0].pixels[index_pixel]);
    }
  }
}

void load_images_print(){
  // Using an enhanced loop to interate over each entry
  for (Map.Entry tmp : pixel.entrySet()) {
    print(tmp.getKey() + " _"+tmp.getValue());
  }
}