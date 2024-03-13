// Exercício 98: Somatório dos Elementos de uma Matriz

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz do tipo inteiro com cinco linhas e cinco colunas e apresente o somatório de todos os elementos da matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com cinco linhas e cinco colunas.
//    - Aguarde a entrada do usuário.

// 2. Somatório de Todos os Elementos:
//    - Calcule o somatório de todos os elementos da matriz.

// 3. Saída de Dados:
//    - Apresente o somatório calculado.

// Exemplo em Pseudocódigo:

// matriz = lerMatriz(5, 5) // função para ler matriz com 5 linhas e 5 colunas
// somatorio = 0

// PARA cada linha i da matriz FAÇA
//     PARA cada coluna j da matriz FAÇA
//         somatorio = somatorio + matriz[i][j]

// EXIBIR "Somatório dos Elementos da Matriz:", somatorio

void main() {
  // Definição da matriz
  List<List<int>> matriz = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25]
  ];

  // Cálculo do somatório de todos os elementos
  int somatorio = calcularSomatorioMatriz(matriz);

  // Exibição do somatório
  print("Somatório dos Elementos da Matriz: $somatorio");
}

int calcularSomatorioMatriz(List<List<int>> matriz) {
  int somatorio = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      somatorio += matriz[i][j];
    }
  }
  return somatorio;
}
