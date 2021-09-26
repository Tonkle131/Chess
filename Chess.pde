int sWidth = 800, sHeight = 800;

Board b;
int squareSize = 100;

Piece pickedUpPiece;

void setup(){
  size(800,800);
  
  b = new Board();
  b.SetupStandard();
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
  for(int i = 0; i < 8; i++){ //<>//
    for(int j = 0; j < 8; j++){ //<>//
      
      if(b.board[i][j] != null){ //<>//
        currentPiece = b.board[i][j]; //<>//
      } else{
        continue; //<>//
      }
      
      if(pickedUpPiece != null){
        if(currentPiece.x == pickedUpPiece.x && currentPiece.y == pickedUpPiece.y){ //<>//
          continue; //<>//
        }
      }
      
      image(currentPiece.img, squareSize * i, squareSize * (7 - j)); //<>//
    }
  }
  
  if(pickedUpPiece != null){
    //Snap picked-up piece to cursor
    
  }
}

void mousePressed(){
  int selectedSquareX = ((mouseX + 100) / squareSize) - 1;
  int selectedSquareY = 8 - ((mouseY + 100) / squareSize);
  
  pickedUpPiece = b.board[selectedSquareX][selectedSquareY]; //<>//
  
  
  
  // //<>// //<>//
}

void CheckMove(){
  
}

void MovePieceBackToOrigin(Piece selectedPiece){
  
}
