abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
  
  void planear(int distanciaMaxima) => 
      print('Este animal puede planear hasta: ${distanciaMaxima} km');
  
  void ascender(double alturaMaxima) => 
      print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts sobre el nivel del mar.');
  
  void descender(String velocidadMax) => 
      print('Este animal puede descender a una velocidad de hasta: ${velocidadMax}');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
  
  void correr(String velocidadMax) => 
      print('Este animal puede correr a una velocidad de hasta: ${velocidadMax}');
  
  void trotar(bool puedeTrotar) => 
      print(puedeTrotar ? 'Este animal puede trotar.' : 'Este animal no puede trotar.');
  
  void saltar(bool puedeSaltar) => 
      print(puedeSaltar ? 'Este animal puede saltar.' : 'Este animal no puede saltar.');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
  
  void sumergir(int profundidadMaxima) => 
      print('Este animal se puede sumergir a una profundidad de hasta: ${profundidadMaxima} mts.');
  
  void respirar(bool puedeRespirar) => 
      print(puedeRespirar ? 'Este animal puede respirar sobre el agua.' : 'Este animal no puede respirar sobre el agua.');
}

// Clases específicas de animales

class PatoGargantilla extends Ave with Caminante, Volador, Nadador {}

class ExocoetusVolitans extends Pez with Nadador, Volador {}



void main() {
  

  print("-------------------------------------------------------------");

  final patoGargantilla = PatoGargantilla();
  print("Instanciando la clase de Pato Arlequín y accediendo a sus funciones:");
  patoGargantilla.volar();
  patoGargantilla.planear(80);
  patoGargantilla.ascender(1500);
  patoGargantilla.descender("50 km/h");
  patoGargantilla.caminar();
  patoGargantilla.correr('10 km/h');
  patoGargantilla.trotar(false);
  patoGargantilla.saltar(false);
  patoGargantilla.nadar();
  patoGargantilla.sumergir(2);
  patoGargantilla.respirar(true);

  print("-------------------------------------------------------------");

  final exocoetusVolitans = ExocoetusVolitans();
  print("Instanciando la clase de Exocoetus Volitans y accediendo a sus funciones:");
  exocoetusVolitans.planear(50);
  exocoetusVolitans.ascender(1000);
  exocoetusVolitans.descender('30 km/h');
  exocoetusVolitans.nadar();
  exocoetusVolitans.sumergir(2);
  exocoetusVolitans.respirar(true);
  exocoetusVolitans.volar();



}
