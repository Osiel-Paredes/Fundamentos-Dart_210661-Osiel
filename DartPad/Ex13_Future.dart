void main() {
  print ('Inicio del programa');
  
  httpGet('https://osiel-paredes')
    .then
    ((value){
     print (value);
    }).
    catchError((err){
    print('Error: $err');
  });
  
  print('Fin del programa');
}


Future<String> httpGet(String url){
  return Future.delayed (const Duration(seconds:1),(){
    throw 'Error en la peticion http';
    //return 'Respuesta de peticion http';
  });
}