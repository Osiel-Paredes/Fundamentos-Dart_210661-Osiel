abstract class Animal {}
abstract class Pez extends Animal {}
abstract class Ave extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima} km/h');
  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.');
  void descender(String velocidadMax) => print('Este animal puede descender a una velocidad de hasta: ${velocidadMax}');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
  void sumergir(int profundidadMaxima) => print('Este animal se puede sumergir a una profundidad de hasta: ${profundidadMaxima} mts.');
  void respirar(bool puedeRespirar) => print('Este animal ${puedeRespirar} puede respirar sobre el agua.');
}

class PezLuna extends Pez with Nadador {}

class Aguila extends Ave with Volador {}

void main() {
  print("Instanciando la clase Pez Luna, y accediendo a sus funciones:");
  final pezLuna = PezLuna();
  pezLuna.nadar();
  pezLuna.sumergir(200);
  pezLuna.respirar(true);
  print("-------------------------------------------------------------");

  print("Instanciando la clase Águila, y accediendo a sus funciones:");
  final aguila = Aguila();
  aguila.volar();
  aguila.planear(100);
  aguila.ascender(3000);
  aguila.descender('50 km/h');
}
