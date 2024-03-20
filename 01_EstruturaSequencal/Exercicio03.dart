// Calcular e apresentar o valor do volume de uma lata de óleo.

import 'dart:math';

void main() {
  // Definindo as dimensões da lata de óleo (em centímetros)
  double raio = 5.0; // Raio da base da lata (em cm)
  double altura = 20.0; // Altura da lata (em cm)

  // Calculando o volume da lata de óleo
  double volume = calcularVolume(raio, altura);

  // Apresentando o valor do volume da lata de óleo
  print('O volume da lata de óleo é: $volume cm³');
}

// Função para calcular o volume de um cilindro
double calcularVolume(double raio, double altura) {
  double volume = pi * pow(raio, 2) * altura;
  return volume;
}
