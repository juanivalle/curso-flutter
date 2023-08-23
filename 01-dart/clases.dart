void main () {
  final Hero wolvering = Hero( 'logan', 'regeneracion');

  print(wolvering);
  print(wolvering.name);
  print(wolvering.power);
}
//hay que inicializar  las instancias con el constructor que tiene el mismo nombre que se le dio a la clase
class Hero {
  
  String name;
  String power;
  //esta es una forma de inicializar
  Hero(this.name, this.power);

  //esta es la otra forma de inicializar
  Hero(String pName, String pPower) 
    : name = pName,
    power = pPower;

  


  
}

//otra forma de hacer lo mismo 

void main () {
  final Hero wolvering = Hero( name: 'logan', power: 'regeneracion');

  print(wolvering);
  print(wolvering.name);
  print(wolvering.power);
}
//hay que inicializar  las instancias con el constructor que tiene el mismo nombre que se le dio a la clase
class Hero {
  
  String name;
  String power;
  //esta es una forma de inicializar
  Hero({required this.name, this.power = 'sin poder'}); //no es necesario poner el required, se puede asignar el valor y luego volver a asignarle otro valor

  //esta es la otra forma de inicializar
  //Hero(String pName, String pPower) 
    //: name = pName,
    //power = pPower;
  
  @override
  String toString() {
    return 'Hero: $name';
    
  }  


  
}