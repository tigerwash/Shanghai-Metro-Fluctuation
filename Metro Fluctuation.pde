//title: Annual Ridership of Shanghai Metro System 2016

//Data source: Shanghai Municipal Transportation Commission

//The aim of our project is to visualize the daily ridership data transformation of Shanghai Metro System in 2016.

//Producer: Longtai Liao & Ruixin Chen


Table  myData = new Table();  // construct an instance of the class Table
int nRows = myData.getRowCount();
int nColumns;// sizes of the table
int wide; //strokwide---rideship
int Row = 1;
boolean Line = false;
boolean L1 = false;
boolean L2 = false;
boolean L3 = false;
boolean L4 = false;
boolean L5 = false;
boolean L6 = false;
boolean L7 = false;
boolean L8 = false;
boolean L9 = false;
boolean L10 = false;
boolean L11 = false;
boolean L12 = false;
boolean L13 = false;
boolean L16 = false;
PShape Line1, Line2, Line3, Line4, Line5, Line6, Line7, Line8, Line9, Line10, Line11, Line12, Line13, Line16;
PImage imgScene;
PImage restart;
PImage home;
String date; //timeline

public void setup() {
  size(1200, 1200);
  myData = loadTable("2016metro.csv");
  frameRate(10);
  imgScene = loadImage("shanghai_metro.jpg");
  restart = loadImage("arrow.png");
  home = loadImage("home.png");
  Line1 = loadShape("Line1.svg");
  Line2 = loadShape("Line2.svg");
  Line3 = loadShape("Line3.svg");
  Line4 = loadShape("Line4.svg");
  Line5 = loadShape("Line5.svg");
  Line6 = loadShape("Line6.svg");
  Line7 = loadShape("Line7.svg");
  Line8 = loadShape("Line8.svg");
  Line9 = loadShape("Line9.svg");
  Line10 = loadShape("Line10.svg");
  Line11 = loadShape("Line11.svg");
  Line12 = loadShape("Line12.svg");
  Line13 = loadShape("Line13.svg");
  Line16 = loadShape("Line16.svg");
  
}

void mouseClicked(){
  
  if(mouseX > 1075 && mouseX < 1155 && mouseY > 135 && mouseY < 165) {
    Line = true;
  }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 75 && mouseY < 85) {
      L1 = !L1;
       //rect (100,80,10,10,10);
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 90 && mouseY < 100){
      L2 = !L2;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 105 && mouseY < 115){
      L3 = !L3;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 120 && mouseY < 130){
      L4 = !L4;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 135 && mouseY < 145){
      L5 = !L5;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 150 && mouseY < 160){
      L6 = !L6;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 165 && mouseY < 175){
      L7 = !L7;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 180 && mouseY < 190){
      L8 = !L8;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 195 && mouseY < 205){
      L9 = !L9;
    }
        
    if(mouseX > 65 && mouseX < 140 && mouseY > 210 && mouseY < 220){
      L10 = !L10;
    }
        
    if(mouseX > 65 && mouseX < 140 && mouseY > 225 && mouseY < 235){
      L11 = !L11;
    }
        
    if(mouseX > 65 && mouseX < 140 && mouseY > 240 && mouseY < 250){
      L12 = !L12;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 255 && mouseY < 265){
      L13 = !L13;
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 270 && mouseY < 280){
      L16 = !L16;
    }
    

     
    //button
    if(mouseX > 1100 && mouseX < 1125 && mouseY > 300 && mouseY < 330) {
    noLoop();  // pause button
    }
    if(mouseX > 1100 && mouseX < 1130 && mouseY > 240 && mouseY < 270) {    
    loop();    //start button
    } 
    
    if(mouseX > 1100 && mouseX < 1130 && mouseY > 360 && mouseY < 400)
   { 
    Row = 0; //restart
    loop();
   }
   
    if(mouseX > 1100 && mouseX < 1135 && mouseY > 425 && mouseY < 460)
   {                //home
    Line = false;
    loop();
    L1 = false;
    L2 = false;
    L3 = false;
    L4 = false;
    L5 = false;
    L6 = false;
    L7 = false;
    L8 = false;
    L9 = false;
    L10 = false;
    L11 = false;
    L12 = false;
    L13 = false;
    L16 = false;
   }
 
  }


void draw() {
  
  background(imgScene);


   fill(80);
   
   //HERE!!!!!
   if(mouseX > 1075 && mouseX < 1155 && mouseY > 135 && mouseY < 165) {
    fill(220,220,220,200);
    strokeWeight(2);
    stroke(80);
    rect(1075, 135, 80, 30);
  }
  
    if (mouseX > 65 && mouseX < 140 && mouseY > 75 && mouseY < 85 && Line == false) {
    Line1.disableStyle();
        noFill();
    shape(Line1,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 90 && mouseY < 100 && Line == false) {
    Line2.disableStyle();
        noFill();
    shape(Line2,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 105 && mouseY < 115 && Line == false) {
    Line3.disableStyle();
        noFill();
    shape(Line3,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 120 && mouseY < 130 && Line == false) {
    Line4.disableStyle();
        noFill();
    shape(Line4,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 135 && mouseY < 145 && Line == false) {
    Line5.disableStyle();
        noFill();
    shape(Line5,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 150 && mouseY < 160 && Line == false) {
    Line6.disableStyle();
        noFill();
    shape(Line6,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 165 && mouseY < 175 && Line == false) {
    Line7.disableStyle();
        noFill();
    shape(Line7,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 180 && mouseY < 190 && Line == false) {
    Line8.disableStyle();
        noFill();
    shape(Line8,0,0);
    } 
    
    if (mouseX > 65 && mouseX < 140 && mouseY > 195 && mouseY < 205 && Line == false) {
    Line9.disableStyle();
        noFill();
    shape(Line9,0,0);
    } 
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 210 && mouseY < 220 && Line == false){
    Line10.disableStyle();
        noFill();
    shape(Line10,0,0);
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 225 && mouseY < 235 && Line == false){
    Line11.disableStyle();
        noFill();
    shape(Line11,0,0);
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 240 && mouseY < 250 && Line == false){
    Line12.disableStyle();
        noFill();
    shape(Line12,0,0);
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 255 && mouseY < 265 && Line == false){
    Line13.disableStyle();
        noFill();
    shape(Line13,0,0);
    }
    
    if(mouseX > 65 && mouseX < 140 && mouseY > 270 && mouseY < 280 && Line == false){
    Line16.disableStyle();
        noFill();
    shape(Line16,0,0);
    }       
    

      // show you have chosed the line
      if(L1==true){
      strokeWeight(4);
      stroke(199,26,30);
      fill(199,26,30);
      ellipse(70, 80, 10, 10);      
       }  
       
      if(L2==true){
      strokeWeight(4);
      stroke(147,184,81);
      fill(147,184,81);
      ellipse(70,95,10,10);
      }
      
      if(L3==true){
      strokeWeight(4);
      stroke(232,198,46);
      fill(232,198,46);
      ellipse(70,110,10,10);
      }
      
      if(L4==true){
      strokeWeight(4);
      stroke(60,38,114);
      fill(60,38,114);
      ellipse(70,125,10,10);
      }
      
      if(L5==true){
      strokeWeight(4);
      stroke(136,77,141);
      fill(136,77,141);
      ellipse(70,140,10,10);
      }
      
      if(L6==true){
      strokeWeight(4);
      stroke(183,21,90);
      fill(183,21,90);
      ellipse(70,155,10,10);
      }
      
      if(L7==true){
      strokeWeight(4);
      stroke(219,105,23);
      fill(219,105,23);
      ellipse(70,170,10,10);
      }
      
      if(L8==true){
      strokeWeight(4);
      stroke(45,139,188);
      fill(45,139,188);
      ellipse(70,185,10,10);
      }
      
      if(L9==true){
      strokeWeight(4);
      stroke(130,185,215);
      fill(130,185,215);
      ellipse(70,200,10,10);
      }
      
      if(L10==true){
      strokeWeight(4);
      stroke(185,164,197);
      fill(185,164,197);
      ellipse(70,215,10,10);
      }
      
      if(L11==true){
      strokeWeight(4);
      stroke(124,26,38);
      fill(124,26,38);
      ellipse(70,230,10,10);
      }
      
      if(L12==true){
      strokeWeight(4);
      stroke(13,144,90);
      fill(13,144,90);
      ellipse(70,245,10,10);
      }
      
      if(L13==true){
      strokeWeight(4);
      stroke(212,143,177);
      fill(212,143,177);
      ellipse(70,260,10,10);
      }
      
      if(L16==true){
      strokeWeight(4);
      stroke(143,195,179);
      fill(143,195,179);
      ellipse(70,275,10,10);
      }


  if(Line == false){
    
    //HERE!!!!!
    fill(150,150,150,100);
    strokeWeight(2);
    stroke(150);
    rect(1075, 135, 80, 30);
    fill(100);
    textSize(21);
    text("START", 1083, 158);
    
    stroke(199,26,30);
      fill(199,26,30);
    ellipse(70,80,7,7);
    
    stroke(147,184,81);
      fill(147,184,81);
    ellipse(70,95,7,7);
    
    stroke(232,198,46);
      fill(232,198,46);
    ellipse(70,110,7,7);
    
    stroke(60,38,114);
      fill(60,38,114);
    ellipse(70,125,7,7);
    
    stroke(136,77,141);
      fill(136,77,141);
    ellipse(70,140,7,7);
    
    stroke(183,21,90);
      fill(183,21,90);
    ellipse(70,155,7,7);
    
    stroke(219,105,23);
      fill(219,105,23);
    ellipse(70,170,7,7);
    
    stroke(45,139,188);
      fill(45,139,188);
    ellipse(70,185,7,7);
    
    stroke(130,185,215);
      fill(130,185,215);
    ellipse(70,200,7,7);
    
    stroke(185,164,197);
      fill(185,164,197);
    ellipse(70,215,7,7);
    
    stroke(124,26,38);
      fill(124,26,38);
    ellipse(70,230,7,7);
    
    stroke(13,144,90);
      fill(13,144,90);
    ellipse(70,245,7,7);
    
    stroke(212,143,177);
      fill(212,143,177);
    ellipse(70,260,7,7);
    
    stroke(143,195,179);
      fill(143,195,179);
    ellipse(70,275,7,7);
    
    
    

    textSize(15);
    stroke(50);
    fill(150);
    text("Line1", 90,85);
    text("Line2", 90,100);
    text("Line3", 90,115);
    text("Line4", 90,130);
    text("Line5", 90,145);
    text("Line6", 90,160);
    text("Line7", 90,175);
    text("Line8", 90,190);
    text("Line9", 90,205);
    text("Line10", 90,220);
    text("Line11", 90,235);
    text("Line12", 90,250);
    text("Line13", 90,265);
    text("Line16", 90,280);
    
   
    
  }
 

  if (Row == 365 ) Row = 0;  // restart the program 
    if (Row<366 && Line == true) {
    Row++;
    int wide1 = int(myData.getString(Row,2)); 
    int wide2 = int(myData.getString(Row,3));
    int wide3 = int(myData.getString(Row,4));
    int wide4 = int(myData.getString(Row,5));
    int wide5 = int(myData.getString(Row,6));
    int wide6 = int(myData.getString(Row,7));
    int wide7 = int(myData.getString(Row,8));
    int wide8 = int(myData.getString(Row,9));
    int wide9 = int(myData.getString(Row,10));
    int wide10 = int(myData.getString(Row,11));
    int wide11 = int(myData.getString(Row,12));
    int wide12 = int(myData.getString(Row,13));
    int wide13 = int(myData.getString(Row,14));
    int wide16 = int(myData.getString(Row,15));
    String date =( myData.getString(Row,15)); //timeline
    
    
    textSize(15);
    fill(150);
    text("Line1", 90,85);
    text("Line2", 90,100);
    text("Line3", 90,115);
    text("Line4", 90,130);
    text("Line5", 90,145);
    text("Line6", 90,160);
    text("Line7", 90,175);
    text("Line8", 90,190);
    text("Line9", 90,205);
    text("Line10", 90,220);
    text("Line11", 90,235);
    text("Line12", 90,250);
    text("Line13", 90,265);
    text("Line16", 90,280);

    
   
    text("Ridership", 45, 920);
    
   
    strokeCap(ROUND);
    
    if(L1==true && Line == true){
    Line1.disableStyle();
    strokeWeight(wide1/30000);
    noFill();
    stroke(199,26,30,200);
    shape(Line1,0,0);
    strokeCap(ROUND);
    strokeJoin(ROUND);
    println(wide1);
    text(wide1, 100, 900);
    text("Line1 - ", 40, 900);
  
    }
    
    if(L2==true && Line == true){
    Line2.disableStyle();
    strokeWeight(wide2/30000);
    noFill();
    stroke(147,184,81,200);
    shape(Line2,0,0);
    strokeJoin(ROUND);
    println(wide2);
    text(wide2, 100, 875);
    text("Line2 - ", 40, 875);

    }
    
    if(L3==true && Line == true){
    Line3.disableStyle();
    strokeWeight(wide3/30000);
    noFill();
    stroke(232,198,46,200);
    shape(Line3,0,0);
    strokeJoin(ROUND);
    println(wide3);
    text(wide3, 100, 850);
    text("Line3 - ", 40, 850);

    }
    
    if(L4==true && Line == true){
    Line4.disableStyle();
    strokeWeight(wide4/30000);
    noFill();
    stroke(60,38,114,200);
    shape(Line4,0,0);
    strokeJoin(ROUND);
    println(wide4);
    text(wide4, 100, 825);
    text("Line4 - ", 40, 825);

    }
    
    if(L5==true && Line == true){
    Line5.disableStyle();
    strokeWeight(wide5/30000);
    noFill();
    stroke(136,77,141,200);
    shape(Line5,0,0);
    strokeJoin(ROUND);
    println(wide5);
    text(wide5, 100, 800);
    text("Line5 - ", 40, 800);

    }
    
    if(L6==true && Line == true){
    Line6.disableStyle();
    strokeWeight(wide6/30000);
    noFill();
    stroke(183,21,90,200);
    shape(Line6,0,0);
    strokeJoin(ROUND);
    println(wide6);
    text(wide6, 100, 775);
    text("Line6 - ", 40, 775);

    }
    
    if(L7==true && Line == true){
    Line7.disableStyle();
    strokeWeight(wide7/30000);
    noFill();
    stroke(219,105,23,200);
    shape(Line7,0,0);
    strokeJoin(ROUND);
    println(wide7);
    text(wide7, 100, 750);
    text("Line7 - ", 40, 750);


    }
    
    if(L8==true && Line == true){
    Line8.disableStyle();
    strokeWeight(wide8/30000);
    noFill();
    stroke(45,139,188,200);
    shape(Line8,0,0);
    strokeJoin(ROUND);
    println(wide8);
    text(wide8, 100, 725);
    text("Line8 - ", 40, 725);
    

    }
    
    if(L9==true && Line == true){
    Line9.disableStyle();
    strokeWeight(wide9/30000);
    noFill();
    stroke(130,185,215,200);
    shape(Line9,0,0);
    strokeJoin(ROUND);
    println(wide9);
    text(wide9, 100, 700);
    text("Line9 - ", 40, 700);
    

    }
    
    if(L10==true && Line == true){
    Line10.disableStyle();
    strokeWeight(wide10/30000);
    noFill();
    stroke(185,164,197,200);
    shape(Line10,0,0);
    strokeJoin(ROUND);
    println(wide10);
    text(wide10, 100, 675);
    text("Line10- ", 40, 675);
    

    }
    
    if(L11==true && Line == true){
    Line11.disableStyle();
    strokeWeight(wide11/30000);
    noFill();
    stroke(124,26,38,200);
    shape(Line11,0,0);
    strokeJoin(ROUND);
    println(wide11);
    text(wide11, 100, 650);
    text("Line11- ", 40, 650);
    

    }
    
    if(L12==true && Line == true){
    Line12.disableStyle();
    strokeWeight(wide12/30000);
    noFill();
    stroke(13,144,90,200);
    shape(Line12,0,0);
    strokeJoin(ROUND);
    println(wide12);
    text(wide12, 100, 625);
    text("Line12- ", 40, 625);
    

    }
    
    if(L13==true && Line == true){
    Line13.disableStyle();
    strokeWeight(wide13/30000);
    noFill();
    stroke(212,143,177,200);
    shape(Line13,0,0);
    strokeJoin(ROUND);
    println(wide13);
    text(wide13, 100, 600);
    text("Line13- ", 40, 600);
    

    }
    
    if(L16==true && Line == true){
    Line13.disableStyle();
    strokeWeight(wide16/30000);
    noFill();
    stroke(143,195,179,200);
    shape(Line16,0,0);
    strokeJoin(ROUND);
    println(wide16);
    text(wide16, 100, 575);
    text("Line16- ", 40, 575);
    

    }
    
    
    //timeline display
  if(Line == true){
  date = myData.getString(Row, 0); 
  strokeWeight(5);
  textSize(21);
  text(date, 1080, 190);
  text("Date", 1030, 190);
  stroke(255);
  line(Row/2+965, 200, Row/2+965, 220);//timeline display
  
  // start button 
  beginShape();
  vertex(1100, 240);
  vertex(1130, 255);
  vertex(1100, 270);
  strokeWeight(2);
  stroke(126);
  fill(150);
  endShape(CLOSE);
  
  // pause button
  beginShape(LINES);
  strokeWeight(10);
  stroke(150);
  strokeCap(SQUARE);
  vertex(1105, 300);
  vertex(1105, 330);
  vertex(1120, 300);
  vertex(1120, 330);
  endShape();
  
  // restart button
  image(restart, 1100, 360);
  
  //home button
  image(home, 1095, 425);
    

    }
 
    }
    
  
  }
  

  
void mouseReleased() {   // built-in function that runs whenever mouse is released (better this than pressed, to allow for dragging)
  if (mouseButton == RIGHT) {   // better use the right buttom, to keep the left button available
    save("snapshot.jpg");  // writes a jpg file in the same folder as this sketch.
  }
}
