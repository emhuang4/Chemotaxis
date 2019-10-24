//declare bacteria variables here
Bacteria[] colony;
celebrity celeb;
 void setup()   
 {
   //initialize bacteria variables here 
   size (500,500);
   colony=new Bacteria[100];
   for (int i=0;i<colony.length;i++){
     colony[i]=new Bacteria();
   }
   celeb=new celebrity(width/2,height/2);

 }   
 void draw(){    
   //move and show the bacteria
   background (0);
   for (int i=0;i<colony.length;i++){
        colony[i].show();
    if (dist(colony[i].x,colony[i].y,celeb.x,celeb.y)<10){
       celeb.show();
       celeb.x=(int)(Math.random()*500)+1;
       celeb.y=(int)(Math.random()*500)+1;
       celeb.show();
     }
     celeb=new celebrity(width/2,height/2);
   } 
   celeb.show();
   textAlign(CENTER,CENTER);
   text("Touch the center dot for a suprise!!",500/2,10);
   textSize(25);

   
 }  

 class Bacteria{     
   //lots of java!
   int x=500;
   int y=500;
   int myColor =color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)),200);
   


   void show(){
     fill (myColor);
     ellipse(x,y,10,10);
     noStroke();
  if(mouseX>x)
     x=x+(int)(Math.random()*7)+1; //mouse right of bacteria
     else 
     x=x+(int)(Math.random()*7)-7; //mouse left of bacteria
  if(mouseY>y)
     y=y+(int)(Math.random()*7)+1; //mouse below bacteria
     else 
     y=y+(int)(Math.random()*7)-7; //mouse above bacteria
    }
 }
class celebrity
 {
  int x;
  int y;
  celebrity(int x1,int y1){
      x=x1;
      y=y1;
  }
   void show(){
      ellipse(x,y,20,20);
   }
}

/* 
  if(mouseX>x)
     x=x+(int)(Math.random()*5)-1;
     else 
     x=x+(int)(Math.random()*5)-3;
  if(mouseX>y)
     y=y+(int)(Math.random()*5)-1;
     else 
     y=y+(int)(Math.random()*5)-3;
*/
/* void pacManWalk(){
  int direction=(int)(Math.random()*4);
  if (direction==0){
    x=x+20; //right
  }
   else if (direction==1){
    x=x-20; //left
  }
   else if (direction==2){
    y=y+20; //down
  }
   else{
    // direction must be 3
    y=y-20; //up
  }
}
*/

