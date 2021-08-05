public class Board{
  Piece[][] board = new Piece[8][8];
  
  public Board(){
    
  }
  
  public void SetupStandard(){
    //White pawns
    for(int i = 0; i < 8; i++){
      board[i][1] = new Pawn(Piece.WHITE, i + 1, 2);
    }
  }  
}
