int sWidth = 800, sHeight = 800;

Board b;
int squareSize = 100;

void setup(){
  size(800,800);
  
  b = new Board();
  b.SetupStandard();
}

void draw(){
  background(100);
  
  DrawBoard();
}

void DrawBoard(){
  DrawSquares(); //<>//
  DrawPieces(); //<>//
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
  
  //Draw light squares
  for(int i = 0; i < 8; i += 2){
    boolean leftSide = true;
    for(int j = 0; j < 8; j++){
      if(leftSide){
        square(i * squareSize, j * squareSize, squareSize);
        leftSide = false;
      }
      else{
        square((i + 1) * squareSize, j * squareSize, squareSize);
        leftSide = true;
      }
    }
  }
}

void DrawPieces(){
  //Flip piece on board
  for(int i = 0; i < 8; i++){
    for(int j = 0; j < 8; j++){
      //Draw piece when flipped
      Piece currentPiece = b.board[i][7 - j];
      
      if(currentPiece != null){
        image(currentPiece.img, squareSize * i, squareSize * j);
      } //<>// //<>//
    }
  }
}
