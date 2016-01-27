public void setup(){
	size(500,500);
	background(0);

}
public void draw(){

 sierpinski(300,20,500);
}
public void mouseDragged(){

}

public void sierpinski(int x, int y, int len){
	if (len <= 20){
		fill(255,0,0);
		triangle(x, y,x+len,y,x+len/2,y-len);
	}
	else{
		fill(255,0,0);
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y, len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}

}