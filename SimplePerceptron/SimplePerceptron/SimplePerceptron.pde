 Perceptron per=new Perceptron(3);
 Point[] pt=new Point[100];
void setup(){
  size(600,600);
   for(int i=0;i<100;i++)
   {
     pt[i]=new Point();
   }

}
void draw(){
   background(255);
   stroke(0);
   line(0,0,width,height);
   for(Point p: pt){
    p.show();
   }
   
   for(Point p: pt){
     float[] inputs={p.x,p.y,p.bias};
    // per.train(inputs,p.label);
     
     int guess=per.guess(inputs);
     int target=p.label;
     if(guess==target)
     {
       fill(0,255,0);
     }
     else fill(255,0,0);
     noStroke();
     ellipse(p.x,p.y,16,16);
     
   }
}
void mousePressed()
{
     for(Point p: pt){
     float[] inputs={p.x,p.y,p.bias};
     per.train(inputs,p.label);
   }
}
