public int size = 400;
public int theX = 100;
public int theY = 550;
public int theLen = 400;

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
	size /= 2;
	if (size == 0){
		size = 400;
		
	}
}

public void sierpinski(int x, int y, int len){
	if (len <= size){
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