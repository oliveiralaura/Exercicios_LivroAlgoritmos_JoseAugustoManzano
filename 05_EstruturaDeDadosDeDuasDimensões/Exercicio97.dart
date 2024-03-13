// Exercício 97: Somatório dos Elementos da Diagonal Principal

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz do tipo real de cinco linhas e cinco colunas e apresente o somatório dos elementos situados na diagonal principal.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com cinco linhas e cinco colunas.
//    - Aguarde a entrada do usuário.

// 2. Somatório da Diagonal Principal:
//    - Calcule o somatório dos elementos situados na diagonal principal da matriz.

// 3. Saída de Dados:
//    - Apresente o somatório calculado.

// Exemplo em Pseudocódigo:

// matriz = lerMatriz(5, 5) // função para ler matriz com 5 linhas e 5 colunas
// somatorio = 0

// PARA cada linha i da matriz FAÇA
//     PARA cada coluna j da matriz FAÇA
//         SE i = j ENTÃO
//             somatorio = somatorio + matriz[i][j]

// EXIBIR "Somatório da Diagonal Principal:", somatorio

void main() {
  // Definição da matriz
  List<List<double>> matriz = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25]
  ];

  // Cálculo do somatório da diagonal principal
  double somatorio = calcularSomatorioDiagonalPrincipal(matriz);

  // Exibição do somatório
  print("Somatório da Diagonal Principal: $somatorio");
}

double calcularSomatorioDiagonalPrincipal(List<List<double>> matriz) {
  double somatorio = 0;
  for (int i = 0; i < 5; i++) {
    somatorio += matriz[i][i];
  }
  return somatorio;
}
