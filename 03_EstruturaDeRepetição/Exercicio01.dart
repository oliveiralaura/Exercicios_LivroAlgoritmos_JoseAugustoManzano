// Elaborar um programa que apresente como resultado os quadrados dos números inteiros existentes na faixa de valores de 15 a 200
void main() {
  for (var numero = 15; numero <= 200; numero++) {
    var quadrado = numero * numero;
    print("O quadrado de $numero é $quadrado");
  }
}
