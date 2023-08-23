void main() {
  
  final Map<String, dynamic> rawjson = {
    'name': 'Tony Stark',
    'power': 'Dienro',
    'isAlive': false
  };
  //de esta forma luego se llama y se crea
  final Hero ironman = Hero.fromjson( rawjson );
  print(ironman);
 
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  
  Hero ({
    required this.name,
    required this.power,
    this.isAlive =true
  });
  
  Hero.fromjson(Map<String, dynamic> json) //de esta manera podemos asignarle los valores a la variable de la instancia de datos provenientes de un Map json desde una peticcion http,
                                            //los "??" sirven para verificar que en caso de que sea null no tire error
    : name = json['name'] ?? 'No Name found',
      power = json['power'] ?? 'No Power found',
      isAlive = json['isAlive'] ?? 'Is Alive not found';
  
  @override
  String toString() {
    return 'Name of the hero: $name, super poder $power, is he alive: ${ isAlive ? 'YES its alive he did it': 'SHIT!!'}';
  }
  
}