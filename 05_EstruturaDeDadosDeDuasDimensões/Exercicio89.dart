// Exercício 89: Leitura e Apresentação de Matriz

// Descrição:
// Este exercício consiste em desenvolver um programa que leia 20 elementos para uma matriz com quatro linhas e cinco colunas. Em seguida, apresentar a matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia os 20 elementos para preencher a matriz com quatro linhas e cinco colunas.
//    - Aguarde a entrada dos valores.

// 2. Apresentação da Matriz:
//    - Apresente os elementos da matriz.

// Exemplo em Pseudocódigo:
// ENTRADA: matriz
// matriz = matriz vazia de 4x5
// PARA i DE 0 ATÉ 3 FAÇA
//     PARA j DE 0 ATÉ 4 FAÇA
//         LEIA matriz[i][j]
// EXIBIR "Matriz:"
// PARA i DE 0 ATÉ 3 FAÇA
//     PARA j DE 0 ATÉ 4 FAÇA
//         EXIBIR matriz[i][j]

void main() {
  List<List<int>> matriz = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20]
  ];
  print("Matriz:");
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      print(matriz[i][j]);
    }
  }
}
