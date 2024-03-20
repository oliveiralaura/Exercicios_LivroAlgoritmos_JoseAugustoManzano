// Ler uma temperatura em graus Fahrenheit e apresentá-la convertida em graus Celsius.

import 'dart:io';

void main() {
  // 1. Entrada de Dados
  stdout.write('Insira a temperatura em graus Fahrenheit: ');
  var temperaturaFahrenheit = double.parse(stdin.readLineSync()!);

  // 2. Processamento
  var temperaturaCelsius = (temperaturaFahrenheit - 32) * 5 / 9;

  // 3. Saída de Dados
  print('A temperatura em graus Celsius é: $temperaturaCelsius');
}
