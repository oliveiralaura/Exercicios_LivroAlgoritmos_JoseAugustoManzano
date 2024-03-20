// Efetuar o cálculo e apresentar o valor de uma prestação em atraso.

import 'dart:io';

void main() {
  // Entrada de dados
  stdout.write('Insira o valor original da prestação: ');
  var valorOriginal = double.parse(stdin.readLineSync()!);

  stdout.write('Insira a taxa de juros em percentual (%): ');
  var taxaJuros = double.parse(stdin.readLineSync()!);

  stdout.write('Insira o número de meses em atraso: ');
  var mesesAtraso = int.parse(stdin.readLineSync()!);

  // Processamento
  var valorAtraso = valorOriginal +
      (valorOriginal * (taxaJuros / 100) * mesesAtraso);

  // Saída de dados
  print('O valor da prestação em atraso é: $valorAtraso');
}
