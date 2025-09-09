//color1 = #1C42C5
//color2 = #FBE3BC

//PFont font;
//String phrase = "EASY COME, EASY GO";

boolean toggle = false;

void setup(){
 //size(1465,890); 
 //size(500,500);
 //size(540,675);
 size(1350,1080);
 //font = createFont("Helvetica-Bold", 48);
 //textFont(font);
 //textSize(30);
 //textAlign(CENTER, CENTER);
}
  
void draw(){
  // toggle kontrolü
  if (frameCount % 30 == 0) {  
    toggle = !toggle;
  }
  
  // toggle'a göre arka plan ve dolgu rengi
  if (toggle) {
    background(#1C42C5);  // lacivert arka plan
    fill(#FBE3BC);   
  } else {
    background(#FBE3BC);  // krem arka plan
    fill(#1C42C5); 
  }
  //background(#1C42C5);
  translate(width/2,height/2);
  
  // The amount of elements
  float amount = 100;
  //for text
  //float amount = phrase.length(); 
  // The size of the figure
  float magnitude = 50;
  
  //fill(#FBE3BC);
  noStroke();
  
  for(int i = 0; i < amount; i++){
    
    //char c = phrase.charAt(i);
    
    //wave1 alters the x-axis
    float wave1 = tan(radians(frameCount + i * 2)) * magnitude;
    
    // wave2 alters the y-axis
    float wave2 = cos(radians(frameCount + i * 500)) * magnitude;
    
    // dönüş açısı (burada hem frameCount hem de i kullanabilirsin)
    float angle = radians(frameCount + i*2);
    
    pushMatrix();
    //translate(wave1, wave2);
    rotate(angle);
    //rect(wave1, wave2, 10, 20);
    rect(wave1, wave2, frameCount, frameCount);
    //text(c,wave1,wave2);
    popMatrix();
  }
  
  if (frameCount == 680){
    exit();
  //println("Frame: " + frameCount);
  }
  
   saveFrame("output/image####.png");
}
