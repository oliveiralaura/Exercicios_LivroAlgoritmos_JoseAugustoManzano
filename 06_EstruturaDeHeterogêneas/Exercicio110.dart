// Exercício 87: Soma de Matrizes

// Descrição:
// Este exercício consiste em desenvolver um programa que leia duas matrizes, cada uma com cinco linhas e três colunas para valores inteiros. O programa deve construir uma terceira matriz com as mesmas dimensões que seja formada pela soma dos elementos da primeira e segunda matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia os elementos para as duas matrizes, considerando cinco linhas e três colunas para cada uma.
//    - Aguarde a entrada dos valores.

// 2. Construção da Matriz Resultante:
//    - Para cada posição (i, j) da matriz resultante, some os elementos correspondentes das matrizes originais.

// 3. Exibição da Matriz Resultante:
//    - Apresente os elementos da matriz resultante.

// Exemplo em Pseudocódigo:
// ENTRADA: matriz1, matriz2
// matriz_resultante = matriz vazia de 5x3
// PARA i DE 0 ATÉ 4 FAÇA
//     PARA j DE 0 ATÉ 2 FAÇA
//         matriz_resultante[i][j] = matriz1[i][j] + matriz2[i][j]
// EXIBIR "Matriz Resultante:", matriz_resultante

import 'dart:io';

void main() {
  List<List<int>> matriz1 = lerMatriz("primeira");
  List<List<int>> matriz2 = lerMatriz("segunda");

  // Construção da terceira matriz (soma das duas primeiras)
  List<List<int>> matriz3 = matriz1.map((linha1) => linha1.asMap().entries.map((entry) => entry.value + matriz2[entry.key][entry.key]).toList()).toList();

  // Exibição da terceira matriz
  exibirMatriz(matriz3);
}

List<List<int>> lerMatriz(String nomeMatriz) {
  print("Digite os elementos da $nomeMatriz matriz:");
  List<List<int>> matriz = [];
  for (var i = 0; i < 5; i++) {
    List<int> linha = [];
    for (var j = 0; j < 3; j++) {
      stdout.write("Elemento ${i + 1},${j + 1}: ");
      var elemento = int.parse(stdin.readLineSync()!);
      linha.add(elemento);
    }
    matriz.add(linha);
  }
  return matriz;
}

void exibirMatriz(List<List<int>> matriz) {
  print("\nMatriz resultante:");
  matriz.forEach((linha) => print(linha));
}
