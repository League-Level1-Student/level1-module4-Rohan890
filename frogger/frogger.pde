int frogX = 400;
int frogY = 560;
void draw(){
background(0,0,0);
fill(94, 221, 95);
ellipse(frogX, frogY, 40, 40);
}
void setup(){
size(800, 600);
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP && frogY>0)
        {
            frogY-= 10;
        }
        else if(keyCode == DOWN && frogY<600)
        {
            frogY+=10; 
        }
        else if(keyCode == RIGHT && frogX<800)
        {
            frogX+= 10;
        }
        else if(keyCode == LEFT && frogX>0)
        {
            frogX-=10;
        }
    }
}
