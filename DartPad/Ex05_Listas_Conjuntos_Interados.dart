void main(){
  // La declaración de una list extra limitada por corchetes (brackets)
  //  y cada elemento de ser individual y puede repetirse
  final numeros = [1,2,2,2,3,4,5,6,7,7,7,7,8,8,9,10];
  print("Ejemplo de LIST: $numeros");
  print("Confirmamos el tipo de dato para numeros que es: ${numeros.runtimeType}");
  print("Podemos accder a cierta información de una lista tal como: ");
  print("El tamaño: ${numeros.length}");
  print(""" 
  Para acceder a los elementos debemos especificar la posición entre []
  El primer Elemento en la posición es: ${numeros[1]}, siempre representando el posición -1
  El ultimo elemento de la lista seria: ${numeros[numeros.length - 1]}
  ----------------------------------------------------------------------------------------
  De igual ra existen las siguientes alternativas
  Primer elemento ${numeros.first}
  Ultimo elemento ${numeros.last}
  ----------------------------------------------------------------------------------------
  Tambien tendremos acceso a algunos metodos que permitan la transformación o filtrado del contenido
  Por ejemplo usar reversed, para invertir el orden original: ${numeros.reversed}
  Es importante observar que la función reserved ha transformado la LIST original y la retorna como un ITERABLE,
  """);
  // Iterables(Iterables)
  final numerosAlreves = numeros.reversed;
  print("Los iterables son estruvturas de datos que DART  y otros lenguajes para optimizar en termino de velocidad el acceso a los datos y propiedades");
  print("Ejemplo de un ITERABLE: $numerosAlreves");
  print("Confirmamos el tipo de dato para NUMEROSALREVES que es: ${numerosAlreves.runtimeType}");
  print("De igual manera podemos transformar una LISTA  en ITERABLE y viceversa");
  print("Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato ${numerosAlreves.toList().runtimeType} ");
  
  //   Conjunto de datos (SET)
  //   Un SET es una estructura de datos utilizada por DART, que simplifica los elementos eliminando los duplicados.
  print("""Veamos que pasa con los Conjuntos (SET)
  Convertimos el ITERABLE en un SET usando .toSET: ${numerosAlreves.toSet()} 
  Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita los datos usando {}.
  """);
  
  //   De igual manera podemos realizar operaciones para el filtro de elementos usando.where()
  final numerosMayoresA5 = numeros.where((int num) {
    return num > 5;
  });
  print("""Hemos filtrado sobre la LIST solo los elementos mayores a 5:
  Resultado de Filtro: ${numerosMayoresA5}""");
  print("Eliminamos duplicados ... ${numerosMayoresA5.toSet()}");
}