// Efetuar o cálculo da quantidade de litros de combustível gasta em uma viagem, utilizando um automóvel que faz 12 quilômetros por litro.

import 'dart:io';

void main() {
  // 1. Entrada de Dados
  stdout.write('Informe a distância da viagem em quilômetros: ');
  var distancia = double.parse(stdin.readLineSync()!);

  // 2. Processamento
  var consumoPorLitro = 12; // Consumo do automóvel em km por litro
  var litrosGastos = distancia / consumoPorLitro;

  // 3. Saída de Dados
  print('Para uma viagem de $distancia km, serão necessários $litrosGastos litros de combustível.');
}
