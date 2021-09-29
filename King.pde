public class King extends Piece{
  
  public King(boolean _colour, int _x, int _y){
    super(_colour, _x, _y);
    
    if(colour == WHITE){
      img = loadImage("wKing.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bKing.png");
      img.resize(100,100);
    }
    
  }
  
}
