public class Board{
  public Piece[][] board = new Piece[8][8];
  
  public Board(){
    //  White
    
    //Pawns
    for(int i = 0; i < 8; i++){
      board[i][1] = new Pawn(Piece.WHITE, i + 1, 2);
    }
    //Bishops
    board[2][0] = new Bishop(Piece.WHITE, 3, 1);
    board[5][0] = new Bishop(Piece.WHITE, 6, 1);
    //Knights
    board[1][0] = new Knight(Piece.WHITE, 2, 1);
    board[6][0] = new Knight(Piece.WHITE, 7, 1);
    //Rooks
    board[0][0] = new Rook(Piece.WHITE, 1, 1);
    board[7][0] = new Rook(Piece.WHITE, 8, 1);
    //King
    board[4][0] = new King(Piece.WHITE, 5, 1);
    //Queen
    board[3][0] = new Queen(Piece.WHITE, 4, 1);
    
    
    //  Black
    
    //Pawns
    for(int i = 0; i < 8; i++){
      board[i][6] = new Pawn(Piece.BLACK, i + 1, 7);
    }
    //Bishops
    board[2][7] = new Bishop(Piece.BLACK, 3, 8);
    board[5][7] = new Bishop(Piece.BLACK, 6, 8);
    //Knights
    board[1][7] = new Knight(Piece.BLACK, 2, 8);
    board[6][7] = new Knight(Piece.BLACK, 7, 8);
    //Rooks
    board[0][7] = new Rook(Piece.BLACK, 1, 8);
    board[7][7] = new Rook(Piece.BLACK, 8, 8);
    //King
    board[4][7] = new King(Piece.BLACK, 5, 8);
    //Queen
    board[3][7] = new Queen(Piece.BLACK, 4, 8);
  };Piece GetPieceAtCoordinates(int x, int y){
    return board[x - 1][7 - y];
  }
  
  public Piece GetPieceAtIndex(int i, int j){
    return board[i][j];
  }
  
  public void RemovePieceAtCoordinates(int x, int y){
    board[x - 1][y - 1] = null;
  }
  
  public void PlacePieceAtCoordinates(Piece piece, int x, int y){
    board[x - 1][y - 1] = piece;
  }
}
