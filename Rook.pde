public class Rook extends Piece{
  
  public Rook(boolean _colour, int _x, int _y){
    colour = _colour;
    x = _x;
    y = _y;
    
    if(colour == WHITE){
      img = loadImage("wRook.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bRook.png");
      img.resize(100,100);
    }
    
  }
  
}
