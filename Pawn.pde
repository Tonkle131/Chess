import java.util.*;

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
  
  public List<Move> GetValidMoves(){
    List<Move> availableMoves = new ArrayList<Move>();
    
    if(colour == WHITE){
      //Forward once
      if(b.board[x][y+1] == null){
        availableMoves.add(new Move(x,y,x,y+1, false));
      }
      //Forward twice
      if(b.board[x][y+2] == null && isFirstMove){
        availableMoves.add(new Move(x,y,x,y+2, false));
      }
      //Capture left
      if(b.board[x-1][y+1] != null && b.board[x-1][y+1].colour != colour){
        availableMoves.add(new Move(x,y,x-1,y+1, true));
      }
      //Capture right
      if(b.board[x+1][y+1] != null && b.board[x+1][y+1].colour != colour){
        availableMoves.add(new Move(x,y,x+1,y+1, true));
      }
      
    }
    else{
      //Colour is black
      
    }
    return null;
  }
  
}
