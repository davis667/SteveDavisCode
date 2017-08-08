PImage Image ; 
int stage = 1; 
boolean printOnce ; 
int x = 1 ;
int y = 2 ;

void setup() {
  size (600, 500); 
  Image = loadImage ("StrandedOnAnIsland.jpg");
  image(Image, 0, 0, 600, 500) ;
  println("You are stranded on an island. You can: a)Head into the jungle b)Swim away") ;
  println("choose a or b"); 
}

void draw() {
 
  //STORYLINE A
  if(keyPressed==true){
    if(key=='a'){
      stage=2; 
      
      Image = loadImage ("CaveOrVillage.jpg");
  image(Image, 0, 0, 600, 500) ;
      println("After wandering through the jungle, you eventually come to a cave. There is also a vaillage in a clearing. You can 1) see what's in the cave, or 2) go to the village.");
      println("choose 1 to see what's in the cave or 2 to go to the village"); 
    }
    if(key=='1' && stage==2){
      Image = loadImage ("Jetpack.jpg");
  image(Image, 0, 0, 600, 500) ;
    println("You find a jetpack in the cave and escape the island. You win!");
    }
    if(key=='2' && stage==2){
      Image = loadImage ("Cannibals.jpg");
  image(Image, 0, 0, 600, 500) ;
    println("You were eaten by cannibals. Game over.");}
  }
  
  //STORY LINE B
  if(keyPressed==true){
    if(key=='b'){
      stage=3; 
      Image = loadImage ("Pirates.jpg");
      image(Image, 0, 0, 600, 500) ;
      println("You swim and swim and swim and swim and eventually you meet pirates. You can either say 'hello', or say 'Yargh, Matey! Yo-ho yo-ho! Yardy har har!'");
      println("Press 1 for 'Hello' or 2 for 'Yargh, Matey! Yo-ho yo-ho! Yardy har har!'"); 
    }
    if(key=='1' && stage==3){
       Image = loadImage ("Squid.jpg");
      image(Image, 0, 0, 600, 500) ;
    println("The pirates feed you to their pet squid. Game over.");
    }
    if(key=='2' && stage ==3){
       Image = loadImage ("RideHome.jpg");
      image(Image, 0, 0, 600, 500) ;
    println("The pirates think you're one of them, and give you a ride home. You win!");}
  
  }
    
}