public class Knight extends Piece{
  
  public Knight(boolean _colour, int _x, int _y){
    super(_colour, _x, _y);
    
    if(colour == WHITE){
      img = loadImage("wKnight.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bKnight.png");
      img.resize(100,100);
    }
    
  }
  
}
