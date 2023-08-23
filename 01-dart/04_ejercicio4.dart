void main () {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9, 10];

  print('list original ${numbers}');
  print('index ${numbers.length}');
  print('first ${numbers.first}');
  print('reversed ${numbers.reversed}'); //el reversed devuelve un iterable, el iterable tiene parentesis

  //si queremos volver a la lista podemos usar la propiedad .toList
  final reversedNumbers = numbers.reversed;
  print('list again ${numbers.toList}';)
  print('to set ${numbers.toSet}'); //el set en vez de parentesis o parentesis rectos tiene llaves y tiene elementos unicos, no repite elementos

  //se podria pasar una lista que tiene elementos repetidos a set para eliminarlos y luego nuevamente volverlo lista
  print('eliminando repetidos ${numbers.toSet().toList()}');

  final numbersGreaterThan5 = numbers.where( (num) {
    return num > 5;
  });

};
