public class Bishop extends Piece{
  public Bishop(boolean _colour, int _x, int _y){
    colour = _colour;
    x = _x;
    y = _y;
    
    if(colour == WHITE){
      img = loadImage("wBishop.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bBishop.png");
      img.resize(100,100);
    }
    
  }
}
