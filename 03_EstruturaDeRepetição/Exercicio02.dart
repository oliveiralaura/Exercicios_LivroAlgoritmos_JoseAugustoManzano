// Elaborar um programa que mostre os resultados da tabuada de um número qualquer.
void main() {
  var numero = 7;

  for (var i = 1; i <= 10; i++) {
    var resultado = numero * i;
    print("$numero x $i = $resultado");
  }
}
