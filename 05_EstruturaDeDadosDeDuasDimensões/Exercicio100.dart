// Exercício 100: Contagem de Números Pares

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz do tipo inteiro com sete linhas e sete colunas e apresente o total de elementos pares existentes na matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com sete linhas e sete colunas.
//    - Aguarde a entrada do usuário.

// 2. Contagem de Números Pares:
//    - Para cada elemento da matriz, verifique se é par e conte o total de elementos pares.

// 3. Saída de Dados:
//    - Apresente o total de números pares encontrados na matriz.

// Exemplo em Pseudocódigo:

// matriz = lerMatriz(7, 7) // função para ler matriz com 7 linhas e 7 colunas
// totalPares = 0

// PARA cada linha i da matriz FAÇA
//     PARA cada coluna j da matriz FAÇA
//         SE matriz[i][j] % 2 = 0 ENTÃO
//             totalPares = totalPares + 1

// EXIBIR "Total de números pares:", totalPares

void main() {
  // Definição da matriz
  List<List<int>> matriz = [
    [1, 2, 3, 4, 5, 6, 7],
    [8, 9, 10, 11, 12, 13, 14],
    [15, 16, 17, 18, 19, 20, 21],
    [22, 23, 24, 25, 26, 27, 28],
    [29, 30, 31, 32, 33, 34, 35],
    [36, 37, 38, 39, 40, 41, 42],
    [43, 44, 45, 46, 47, 48, 49]
  ];

  // Contagem de números pares na matriz
  int totalPares = contarNumerosPares(matriz);

  // Exibição do total de números pares
  print("Total de números pares: $totalPares");
}

int contarNumerosPares(List<List<int>> matriz) {
  int totalPares = 0;
  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 7; j++) {
      if (matriz[i][j] % 2 == 0) {
        totalPares++;
      }
    }
  }
  return totalPares;
}
