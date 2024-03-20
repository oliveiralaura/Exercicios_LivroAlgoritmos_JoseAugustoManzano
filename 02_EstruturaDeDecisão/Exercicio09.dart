// Ler cinco valores numéricos inteiros e apresentar o maior e menor.]
void main() {
  List<int> valores = [10, 5, 20, 15, 25];
  int maior = valores[0];
  int menor = valores[0];
  for (int valor in valores) {
    if (valor > maior) {
      maior = valor;
    }
    if (valor < menor) {
      menor = valor;
    }
  }
  print("O maior valor é: $maior");
  print("O menor valor é: $menor");
}
