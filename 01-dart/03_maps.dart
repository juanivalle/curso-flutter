void main() {
  final pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': <dynamic, String> {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(pokemon);
  print('Name: ${ pokemon['name'] }');
  print('back: ${ pokemon['sprites'][2] }');
  print('back: ${ pokemon['sprites'][1] }');
}