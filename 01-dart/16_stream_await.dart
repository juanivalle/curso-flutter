void main () {
  emitNumbers().listen( (value) {
    print('stream value: $value');
  });
}

//el async asterisco indica que es una funcion que devuelve un string
Stream emitNumbers() async* {
  
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
  
}