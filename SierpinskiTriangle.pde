public int siz = 600;
public int theX = 100;
public int theY = 550;
public int theLen = 600;

public void setup(){
  size(600,600);
  background(0);


}
public void draw(){
  background(0);
   sierpinski(theX,theY,theLen);

}
public void mouseDragged(){
}

public void mouseReleased(){
  siz /= 2;
  if (siz <= 4.70){
    siz = 600;
    
  }
}

public void sierpinski(int x, int y, int len){
  if (len <= siz){
    fill(219,152,5);
    triangle(x, y,x+len,y,x+len/2,y-len);
  }
  else{
    fill(0,152,0);
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y, len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }

}
