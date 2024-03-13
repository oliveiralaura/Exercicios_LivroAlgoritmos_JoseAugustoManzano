// Exercício 102: Contagem de Números Pares e Ímpares em Matriz

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz de dez linhas e sete colunas. Ao final, apresentar o total de elementos pares e ímpares existentes na matriz. Apresentar também o percentual de elementos pares e ímpares em relação ao total de elementos da matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com dez linhas e sete colunas.
//    - Aguarde a entrada do usuário.

// 2. Contagem de Números Pares e Ímpares:
//    - Para cada elemento da matriz, verifique se é par ou ímpar e conte o total de elementos pares e ímpares.
//    - Calcule o percentual de elementos pares e ímpares em relação ao total de elementos da matriz.

// 3. Saída de Dados:
//    - Apresente o total de elementos pares e ímpares.
//    - Apresente o percentual de elementos pares e ímpares.

// Exemplo em Pseudocódigo:

// matriz = lerMatriz(10, 7) // função para ler matriz com 10 linhas e 7 colunas
// totalPares = 0
// totalImpares = 0

// PARA cada linha i da matriz FAÇA
//     PARA cada coluna j da matriz FAÇA
//         SE matriz[i][j] % 2 = 0 ENTÃO
//             totalPares = totalPares + 1
//         SENÃO
//             totalImpares = totalImpares + 1

// totalElementos = 10 * 7
// percentualPares = (totalPares / totalElementos) * 100
// percentualImpares = (totalImpares / totalElementos) * 100

// EXIBIR "Total de elementos pares:", totalPares
// EXIBIR "Total de elementos ímpares:", totalImpares
// EXIBIR "Percentual de elementos pares:", percentualPares, "%"
// EXIBIR "Percentual de elementos ímpares:", percentualImpares, "%"

void main() {
  // Definição da matriz
  List<List<int>> matriz = [
    [2, 5, 6, 8, 9, 10, 12],
    [3, 7, 11, 13, 15, 17, 19],
    [4, 8, 12, 16, 20, 24, 28],
    [1, 2, 3, 4, 5, 6, 7],
    [10, 20, 30, 40, 50, 60, 70],
    [11, 21, 31, 41, 51, 61, 71],
    [13, 14, 15, 16, 17, 18, 19],
    [22, 23, 24, 25, 26, 27, 28],
    [29, 30, 31, 32, 33, 34, 35],
    [36, 37, 38, 39, 40, 41, 42]
  ];

  // Contagem de números pares e ímpares
  int totalPares = 0;
  int totalImpares = 0;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 7; j++) {
      if (matriz[i][j] % 2 == 0) {
        totalPares++;
      } else {
        totalImpares++;
      }
    }
  }

  // Cálculo do percentual
  int totalElementos = 10 * 7;
  double percentualPares = (totalPares / totalElementos) * 100;
  double percentualImpares = (totalImpares / totalElementos) * 100;

  // Saída de dados
  print("Total de elementos pares: $totalPares");
  print("Total de elementos ímpares: $totalImpares");
  print("Percentual de elementos pares: $percentualPares%");
  print("Percentual de elementos ímpares: $percentualImpares%");
}
