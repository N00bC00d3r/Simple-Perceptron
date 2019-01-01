class Point{
  
  float x,y,bias;
  int label;
  
  Point(){
    x=random(0,width);
    y=random(0,height);
    bias=1;
    if(x>y)
    {
      label=1;
    }
    else label=-1;
  }
  void show()
  {
    stroke(0);
    if(label==1)
    {
      fill(255);
    }
    else
    {
      fill(0);
    }
    ellipse(x,y,32,32);
  }
  
}
