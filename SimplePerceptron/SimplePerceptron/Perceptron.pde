class Perceptron{
  float[] weights;
   float lr=0.01;
  Perceptron(int n){
    weights =new float[n];
    for(int i=0;i<weights.length;i++)
    {
      weights[i]=random(-2,2);
    }
  }
  int guess(float[] inputs)
  {
    float sum=0;
    for(int i=0;i<weights.length;i++)
    {
      sum+=inputs[i]*weights[i];
    }
    int output=sign(sum);
    return output;
  }
  int sign(float x){
    if(x>=0) return 1;
    else return -1;
  }
  void train(float[] input,int target)
  {
    int guess=guess(input);
    float error=target-guess;
    for(int i=0;i<weights.length;i++)
    {
      weights[i]+=error*input[i]*lr;
    }
  }
}
