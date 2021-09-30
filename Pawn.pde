import java.util.*;

public class Pawn extends Piece{
  
  public Pawn(boolean _colour, int _x, int _y){
    super(_colour, _x, _y);
    
    
    if(colour == WHITE){
      img = loadImage("wPawn.png");
      img.resize(100,100);
    }
    else{
      img = loadImage("bPawn.png");
      img.resize(100,100);
    }
    
  }
  
  @Override
  public ArrayList<Move> GetValidMoves(){
    ArrayList<Move> availableMoves = new ArrayList<Move>();
    
    if(colour == WHITE){
      //Forward once
      if(board.board[idxX][idxY - 1] == null){
        availableMoves.add(new Move(x,y,x,y+1, false, false));
      }
      //Forward twice
      if(board.board[x][8 - y] == null && isFirstMove){
        availableMoves.add(new Move(x,y,x,y+2, false, false));
      }
      //Capture left
      if(board.board[x-1][y+1] != null && board.board[x-1][y+1].colour != colour){
        availableMoves.add(new Move(x,y,x-1,y+1, true, false));
      }
      //Capture right
      if(board.board[x+1][y+1] != null && board.board[x+1][y+1].colour != colour){
        availableMoves.add(new Move(x,y,x+1,y+1, true, false));
      }
      
    }
    else{
      //Colour is black
      
    }
    return availableMoves;
  }
  
}
