setup = function() {
    size(600, 400);
};

//Background Images
var startImage = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/petparlor.start.png?v=1741107562450");

var catImage = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/cat1.png?v=1741107641634");

var dogImage = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/dog1.png?v=1741107683968");

var bunImage = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/bun1.png?v=1741107694604")


//Petting Images
var catPet = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/catpet.png?v=1741107676368");

var dogPet = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/dogpet.png?v=1741107688029");

var bunPet = loadImage("https://cdn.glitch.global/5e978a27-a546-4ee3-986f-8172abaf3d00/bunpet.png?v=1741107700714");



//Variable Declarations
var sceneImage = startImage;
var sceneText = "Who do you want to pick?  [Press c for cat, d for dog, and b for bunny]";
var sceneID = 0;

draw = function(){
    
    
    
   drawScene();
  
   drawFish(100,100);
   
    fill(153, 110, 86);
    textSize(20);
   text("Pet Parlor", 60,50);


   if(keyPressed){
     if(key == 'c'){
       sceneImage = catImage;   
       sceneText = "Click & hold to pet!  [Press q to go back to the parlor]";
       sceneID = 1;
     } 
     if(key == 'q'){
      sceneImage = startImage;
      sceneID = 0;
      sceneText = "Who do you want to pick?  [Press c for cat, d for dog, and b for bunny]";
    } 
    if(key == 'd'){
       sceneImage = dogImage;   
       sceneText = "Click & hold to pet!  [Press q to go back to the parlor]";
       sceneID = 2;
     } 
    if(key == 'b'){
       sceneImage = bunImage;   
       sceneText = "Click & hold to pet!  [Press q to go back to the parlor]";
       sceneID = 3;
     } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    
    
    if(sceneID == 1){
    
    if(mousePressed){
      fill(0,0,0);
      sceneImage = catPet;
    }
    else{
      sceneImage = catImage;
    }
    
    }
   
    if(sceneID == 2){    
    if(mousePressed && sceneID == 2){
      fill(0,0,0);
      sceneImage = dogPet;
    }
    else{
      sceneImage = dogImage;
    }
    }

    if(sceneID == 3){if(mousePressed && sceneID == 3){
      fill(0,0,0);
      sceneImage = bunPet;
    }
    else{
    sceneImage = bunImage;
    }
  }
    
    
    fill(233, 170, 128);
    rect(-10, 350, 650, 100);
      
    fill(255, 245, 219);
    textSize(20);
   
   text(sceneText, 30, 355, 549,50);
};



//Function Definition
var drawFish = function(fishX, fishY, fishColor){
  fill(244, 186, 112);
  strokeWeight(4);
  stroke(153, 110, 86);
  rect(fishX-54,fishY-69,135,25); //tail
  textSize(40);
  line(fishX-39, fishY-70,60,-10);
  line(fishX+70, fishY-70,170,-10);
};



