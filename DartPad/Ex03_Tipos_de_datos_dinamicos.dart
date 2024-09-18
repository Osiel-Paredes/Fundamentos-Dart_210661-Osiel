void main() {
    
  dynamic errorMessage;
  
  print(""" El valor inicial de errorMessage es: $errorMessage
  Al ser dinamico permite la asignacion  de valores nulos. """);
  
  errorMessage= 404;
  print(""" --------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En algunos """);
  
  errorMessage = false;
  print("""---------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Cuano el sistema funciona correctamente el mensaje de error puede ser FALSO """);
  
  errorMessage = [400,404,500,502,505];
  print("""---------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En caso de que el sistema detecte varios errores podria agregarlos a una Lista """);
  
  errorMessage = {125, "Usuario no encntrado", true, -1025.16, 'A'};
  print("""---------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  O incluso como un conjunto (SET) de datos """);
  
  errorMessage = () => true;
  print("""---------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Que en este caso es el resultado de una funcion. """);
}