int sWidth = 800, sHeight = 800;

Board board;
int squareSize = 100;

Piece pickedUpPiece;
ArrayList<Move> availableMoves = new ArrayList();

boolean whiteToMove = true;

void setup(){
  size(800,800);
  
  board = new Board();
}

void draw(){
  background(40, 50, 40);
  
  DrawBoard();
}

void DrawBoard(){
  DrawSquares();
  DrawPieces();
}

void DrawSquares(){
  //Horizontal lines
  for(int i = 0; i < 9; i++){
    line(0, squareSize * i, sWidth, squareSize * i);
  }
  //Vertical lines
  for(int i = 0; i < 9; i++){
    line(squareSize * i, 0, squareSize * i, sHeight);
  }
  
  fill(200,200,200);
  //Draw light squares
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      if(i % 2 == 0){
        if(j % 2 == 0){
          square(i * squareSize, j * squareSize, squareSize);
        }
      } else{
        if(j % 2 == 1){
          square(i * squareSize, j * squareSize, squareSize);
        }
      }
    }
  }
}

void DrawPieces(){
  Piece currentPiece;
  
  //Iterate over all squares on the board
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      
      if(board.GetPieceAtIndex(i,j) != null){
        currentPiece = board.GetPieceAtIndex(i,j);
      } else{
        continue;
      }
      
      //Skip piece if it is picked up (snap piece to cursor later)
      if(pickedUpPiece != null){
        if(currentPiece.x == pickedUpPiece.x && currentPiece.y == pickedUpPiece.y){
          continue;
        }
      }
      
      image(currentPiece.img, squareSize * i, squareSize * (7 - j));
    }
  }
  
  if(pickedUpPiece != null){
    //Snap picked-up piece to cursor
    image(pickedUpPiece.img, mouseX - 50, mouseY - 50);
  }
}

void mousePressed(){
  int selectedSquareX = (mouseX + 100) / squareSize;
  int selectedSquareY = 8 - ((mouseY) / squareSize);
  
  if(pickedUpPiece == null){//Picking up piece
    pickedUpPiece = board.GetPieceAtCoordinates(selectedSquareX, selectedSquareY);
    
    if(pickedUpPiece == null){
      return;
    }
    
    //Validate piece can be picked up
    if(pickedUpPiece.colour != whiteToMove){
      pickedUpPiece = null;
    }
    
    availableMoves = pickedUpPiece.GetValidMoves();
    
  } else{ //Placing piece
    if(ValidateMove(pickedUpPiece, selectedSquareX, selectedSquareY)){
      //Move was valid
      board.RemovePieceAtCoordinates(pickedUpPiece.x, pickedUpPiece.y);
      MakeMove(pickedUpPiece, selectedSquareX, selectedSquareY);
      
      
    } else{
      //Move was invalid
      pickedUpPiece = null;
      
    }
  }
}

boolean ValidateMove(Piece pieceToMove, int x, int y){
  Move selectedMove = null;
  
  if(availableMoves == null || availableMoves.isEmpty()){
    return false;
  }
  
  for(Move move : availableMoves){
    if(move.x2 == x && move.y2 == y){
      selectedMove = move;
    }
  }
  
  if(selectedMove == null){
    return false;
  }
  
  
  
  return true;
}

void MakeMove(Piece pieceToMove, int destX, int destY){
  board.RemovePieceAtCoordinates(destX, destY);
  board.PlacePieceAtCoordinates(pieceToMove, destX, destY);
  pickedUpPiece = null;
}
