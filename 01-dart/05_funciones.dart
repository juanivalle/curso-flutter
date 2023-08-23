void main () {
  print(greetEveryone());
  print('suma: ${ addTwoNumbers(10 , 20) }');
  print('suma: ${ addTwoNumbersArrow(10 , 20) }');
  print(greetPerson( name: 'juan', message: 'como estas'));
}
// a la funcion se le tiene que determinar el tipo del valor que va a retornar, no es necesario porque dart infiere el tipo, pero es recomendado
String greetEveryone() {
  return 'Hello everyone!';
}

String greetEveryoneArrow() => 'Hello everyone'; //inmediatamente tiene que venir lo que se queire retornar el las funciones de flecha en dart


int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersArrow(int a, int b) => a + b;

//aca lo que hace los parentesis rectos y el signo de pregunta es decirle a la maquina que el parametro b puede ser null y abajo para mayor seguridad se le asigna el valor de b a b
// y con los '??' se dice que si no se le asigna valor a b este es '0'
int addTwoNumbersOptional(int a , [int? b]) {
  
  b = b ?? 0; // tambien puede hacerse b?? = 0
  
  return a + b;
}

//las llaves los hacen opcionales, esto es que el paramentro en algun momento puede tener el valor de null, salvo que se le establezca un valor
//REQUIRED lo que hace es que sea necesaario que al usar l a funcion se utilice el parametro al que se le otorgo la propiedad de required
String greetPerson({ required String name, String message ='hola,'}) {
  return '$message $name';
}