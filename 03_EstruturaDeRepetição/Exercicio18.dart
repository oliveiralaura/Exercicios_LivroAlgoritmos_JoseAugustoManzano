// Elaborar um programa que apresente o resultado inteiro da divisão de dois números quaisquer. Não é permitido utilizar o operador aritmético da divisão.
void main() {
  var dividendo = 27;
  var divisor = 4;
 
  var resultado = 0;
  var resto = dividendo;
 
  while (resto >= divisor) {
    resto -= divisor;
    resultado++;
  }
 
  print("O resultado da divisão de $dividendo por $divisor é: $resultado");
}