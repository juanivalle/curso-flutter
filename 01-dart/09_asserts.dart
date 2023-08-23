void main () {
  
  final mySquare = Square( side: -10);
  
  mySquare.side = -5; //esto da error gracias al if que establece que no pude ser menor a 0
  
  print( 'area: ${mySquare.area}');
}

class Square {
  // con el el guion bajo se hace privada
  double _side;
  
  
  Square({ required double side})
    :assert(side >= 0, 'side must be >= 0'), //los asserts son para prevenir errores, para establecer condiciones
    _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value) {
    print('setting new value $value');
    if ( value < 0) throw 'Value must be >= 0';
    _side = value;
    
  }
  //double calculateArea() {
    //return side * side;
  
  
}