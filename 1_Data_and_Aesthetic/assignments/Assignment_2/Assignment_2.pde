int [] shoes;
int [] travel;
int [] disease;
PImage shoesP;
PImage travelP;
PImage diseaseP;



void setup(){
  background(0);
  size(800,850);
  loadShoeData();
  loadTravelData();
  loadDiseaseData();
  shoesP = loadImage("shoe.png");
  travelP = loadImage("travel.png");
  diseaseP = loadImage("disease.png");
  draw(shoes, disease, travel);

}



void loadShoeData(){
  Table myTable= loadTable ("master.csv");
  shoes= new int[myTable.getRowCount()];
  for (int i=1; i<65; i++) {
    TableRow row = myTable.getRow(i);
    shoes[i]=row.getInt(0);
    //println(shoes[i] + " shoes");
  }
  
}



void loadTravelData(){
  Table myTable= loadTable ("master.csv");
  travel= new int[myTable.getRowCount()];
  for (int i=1; i<65; i++) {
    TableRow row = myTable.getRow(i);
    travel[i]=row.getInt(6);
    //println(travel[i] + " travel");
  }
  
}



void loadDiseaseData(){
  Table myTable= loadTable ("master.csv");
  disease= new int[myTable.getRowCount()];
  for (int i=1; i<65; i++) {
    TableRow row = myTable.getRow(i);
    disease[i]=row.getInt(3);
    //println(disease[i] + " disease");
  }
  
  
}


void draw(int [] vals, int [] vals2, int [] vals3){
  for (int i = 0; i < vals.length; i++) {
   float x = map(i,0, vals.length,100, width-100);
   float y = height - 150;
   float w = (width - 200)/vals.length;
   float h = -map(vals[i], 0, max(vals), 0, height - 250);
   image(shoesP,x-25,y, w*8, h/3);
   smooth();
textSize(20);
text("shoes", 50, height - 100);
   
  }
  
  for (int i = 0; i < vals2.length; i++) {
   float x = map(i,0, vals2.length,100, width - 100);
   float y = height - 350;
   float w = (width - 200)/vals2.length;
   float h = -map(vals2[i], 0, max(vals2), 0, height - 250);
   image(diseaseP,x-25,y, w*8, h/3);
   
smooth();
textSize(20);
text("disease", 50, height - 300);

  }
  
  for (int i = 0; i < vals3.length; i++) {
   
   float x = map(i,0, vals3.length,100, width - 100);
   float y = height - 600;
   float w = (width - 200)/vals3.length;
   float h = -map(vals3[i], 0, max(vals3), 0, height - 250);
   image(travelP,x-45,y, w*12, h/3);

smooth();
textSize(20);
text("immigration", 50, height - 550);

  }
    
  
  
  
}



