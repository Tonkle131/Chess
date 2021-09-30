public class Piece{
  
  public int x,y;
  public int idxX,idxY;
  
  public boolean colour;
  public static final boolean BLACK = false, WHITE = true;
  public boolean isFirstMove = true;
  
  public PImage img;
  
  public Piece(boolean _colour, int _x, int _y){
    colour = _colour;
    
    x = _x;
    idxX = _x - 1;
    
    y = _y;
    idxY = 8 - _y;
  }
  
  public ArrayList<Move> GetValidMoves(){
    
    return null;
  }
  
  public void MovePiece(int x, int y){
    this.x = x;
    this.y = y;
    this.idxX = x - 1;
    this.idxY = 8 - y;
  }
}
