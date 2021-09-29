public class Queen extends Piece{
  
  public Queen(boolean _colour, int _x, int _y){
    super(_colour, _x, _y);
    
    if(colour == WHITE){
      img = loadImage("wQueen.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bQueen.png");
      img.resize(100,100);
    }
    
  }
  
}
