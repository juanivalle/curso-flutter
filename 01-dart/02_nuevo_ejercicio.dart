void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final abilities = ['impostor'];
  final sprites = <String>['ditto/se mueve', 'lalalalala'];
  
  dynamic errorMessage = 'hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage () => true;
  errorMessage =null;


  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
  
}