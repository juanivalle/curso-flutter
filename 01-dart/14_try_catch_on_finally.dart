void main () async {
  
  print('inicio del programa');
  try{
    final value = await httpGet('https:algoalgoalgo.com');
    print(value);
  
  } on Exception catch(err) {
    print('Tenemos una exception $err');
  } catch (err) {
    print('tenemos un error: $err');
  }
  finally {
    print('fin del try y catch');
  }
  print('Fin del programa');
}

//async lo que hace es indicar que la funcion va a retornar un Future
Future httpGet(String url) async {
  // podemos poner await para decirle que espere determinado tiempo antes de hacer el return solo se puede utilizar el await si estamos en una funcion async
  await Future.delayed( const Duration(seconds: 1 ));
  
  throw Exception('No hay parametros en el url');
  //throw 'error en la peticion';
  //return 'Tenemos un valor de la peticion';
    
    
    
    //return 'Respuesta de la peticion http';
  }
 