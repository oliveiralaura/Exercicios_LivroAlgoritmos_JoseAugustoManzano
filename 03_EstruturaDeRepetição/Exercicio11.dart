// Escrever um programa que calcule e apresente o somatório do número de grãos de trigo que se pode obter em um tabuleiro de xadrez, 
//obdecendo à seguinte regra: colocar um grão de trigo sobre o primeiro quadro, e nos quadros seguintes, o dobro do quadro anterior.
void main() {
  var numeroQuadrados = 64;
  var graosNoPrimeiroQuadrado = 1;
  var somatorioGraos = 0;
  for (var i = 1; i <= numeroQuadrados; i++) {
    somatorioGraos += graosNoPrimeiroQuadrado;
    graosNoPrimeiroQuadrado *= 2;
  }

  print("O somatório do número de grãos de trigo em um tabuleiro de xadrez é: $somatorioGraos");
}
