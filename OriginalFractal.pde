public void setup()
{
	size(400,500);
}
public void draw()
{
    background(0);
	fractal(200,250,200);
}
public void fractal(int x, int y, int siz)
{
  triangle(x-siz/2,y+siz/2,x+siz/2,y+siz/2,x,y-siz/2);
  if(siz > 10)
  {
fill(0,255,0);
  	pushMatrix();
    translate(x-siz/2,y);
    rotate(-PI/4);
    fractal(0,0,siz/2);
    popMatrix();

fill(255,6,1);
    pushMatrix();
    translate(x+siz/2,y);
    rotate(PI/4);
	fractal(0,0,siz/2);
	popMatrix();

fractal(100,100,siz/2);
fractal(270,100,siz/2);
  }


}
