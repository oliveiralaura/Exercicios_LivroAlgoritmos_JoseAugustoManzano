// Exercício 88: Junção de Matrizes

// Descrição:
// Este exercício consiste em desenvolver um programa que leia duas matrizes, cada uma com uma linha e sete colunas, para receber números inteiros. O programa deve construir uma terceira matriz cuja primeira coluna deve ser formada pelos elementos da primeira matriz e a segunda coluna pelos elementos da segunda matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia os elementos para as duas matrizes, considerando uma linha e sete colunas para cada uma.
//    - Aguarde a entrada dos valores.

// 2. Construção da Matriz Resultante:
//    - Para cada posição (i, j) da matriz resultante, defina a primeira coluna como os elementos da primeira matriz e a segunda coluna como os elementos da segunda matriz.

// 3. Exibição da Matriz Resultante:
//    - Apresente os elementos da matriz resultante.

// Exemplo em Pseudocódigo:
// ENTRADA: matriz1, matriz2
// matriz_resultante = matriz vazia de 7x2
// PARA i DE 0 ATÉ 6 FAÇA
//     matriz_resultante[i][0] = matriz1[0][i]
//     matriz_resultante[i][1] = matriz2[0][i]
// EXIBIR "Matriz Resultante:", matriz_resultante

void main() {
  List<int> matriz1 = [1, 2, 3, 4, 5, 6, 7];
  List<int> matriz2 = [8, 9, 10, 11, 12, 13, 14];

  List<List<int>> matrizResultante = construirMatrizResultante(matriz1, matriz2);

  print("Matriz Resultante:");
  exibirMatriz(matrizResultante);
}

List<List<int>> construirMatrizResultante(List<int> matriz1, List<int> matriz2) {
  List<List<int>> matrizResultante = [];
  for (int i = 0; i < 7; i++) {
    matrizResultante.add([matriz1[i], matriz2[i]]);
  }
  return matrizResultante;
}

void exibirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      print("${matriz[i][j]} ");
    }
    print("");
  }
}
