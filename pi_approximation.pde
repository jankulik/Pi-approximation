double pi;
double bestPi = 0;
double diff;
double prevDiff;
int r = 400;

double general;
double inCircle;
double four = 4;

void setup()
{
  size(814, 814);
  background(255);
  
  translate(width/2, height/2);
  stroke(0);
  strokeWeight(4);
  noFill();
  rectMode(CENTER);
  rect(0, 0, 800, 800);
  ellipse(0, 0, 800, 800);
}

void draw()
{
  translate(width/2, height/2);
  
  for(int i = 0; i < 100; i++)
  {
    float x = random(-400, 400);
    float y = random(-400, 400);
    general++;
    
    float distance = (x * x) + (y * y);
    
    if(distance <= r * r)
    {
      stroke(32, 211, 45);
      inCircle++;
    }
    else
    {
      stroke(216, 66, 52);
    }
    
    point(x, y);
    
    pi = four * (inCircle / general);
    
    diff = Math.abs(pi - Math.PI);
    prevDiff = Math.abs(bestPi - Math.PI);
    
    if(diff < prevDiff)
    {
      bestPi = pi;
    }
  }
  
  println(bestPi);
}
