public class Pawn extends Piece{
  
  public Pawn(boolean _colour, int _x, int _y){
    colour = _colour;
    x = _x;
    y = _y;
    
    if(colour == WHITE){
      img = loadImage("wPawn.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bPawn.png");
      img.resize(100,100);
    }
    
  }
  
}
