// Elaborar um programa que apresente o somatório dos valores pares existentes na faixa de 1 até 500
void main() {
  var somatorio = 0;
  for (var i = 2; i <= 500; i += 2) {
    somatorio += i;
  }
  print(somatorio);
}
