// Fazer a leitura de um número e apresentá-lo apenas se ele for múltiplo de 3 e 5.
void main() {
  var numero = 15;
  if (numero % 3 == 0 && numero % 5 == 0) {
    print("O número $numero é múltiplo de 3 e 5.");
  } else {
    print("O número $numero não é múltiplo de 3 e 5.");
  }
}
