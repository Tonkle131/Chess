public class Move{
  boolean isCapture;
  int x1, y1;
  int x2, y2;
  
  public Move(int _x1, int _y1, int _x2, int _y2, boolean _isCapture){
    x1 = _x1;
    y1 = _y1;
    x2 = _x2;
    y2 = _y2;
    isCapture = _isCapture;
  }
  
}
