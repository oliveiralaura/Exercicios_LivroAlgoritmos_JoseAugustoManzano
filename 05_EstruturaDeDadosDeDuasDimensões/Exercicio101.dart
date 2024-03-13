// Exercício 101: Soma de Linhas em Matriz e Somatório Total

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz do tipo real com oito linhas e seis colunas. Construir uma segunda matriz que seja formada pela soma de cada linha da primeira matriz. Ao final, apresentar o somatório dos elementos da primeira e segunda matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com oito linhas e seis colunas.
//    - Aguarde a entrada do usuário.

// 2. Soma de Linhas e Construção da Segunda Matriz:
//    - Para cada linha da primeira matriz, some todos os elementos e armazene o resultado na segunda matriz.
//    - Ao mesmo tempo, calcule o somatório total dos elementos da primeira matriz.

// 3. Saída de Dados:
//    - Apresente o somatório dos elementos da primeira matriz e da segunda matriz.

// Exemplo em Pseudocódigo:

// matriz = lerMatriz(8, 6) // função para ler matriz com 8 linhas e 6 colunas
// segundaMatriz = novaMatriz(8, 1) // função para criar nova matriz com 8 linhas e 1 coluna
// somatorioTotal = 0

// PARA cada linha i da matriz FAÇA
//     somaLinha = 0
//     PARA cada coluna j da matriz FAÇA
//         somaLinha = somaLinha + matriz[i][j]
//         somatorioTotal = somatorioTotal + matriz[i][j]
//     segundaMatriz[i][0] = somaLinha

// EXIBIR "Somatório dos elementos da primeira matriz:", somatorioTotal
// EXIBIR "Somatório dos elementos da segunda matriz:", somatorioTotal

void main() {
  // Definição da matriz
  List<List<double>> matriz = [
    [1, 2, 3, 4, 5, 6],
    [7, 8, 9, 10, 11, 12],
    [13, 14, 15, 16, 17, 18],
    [19, 20, 21, 22, 23, 24],
    [25, 26, 27, 28, 29, 30],
    [31, 32, 33, 34, 35, 36],
    [37, 38, 39, 40, 41, 42],
    [43, 44, 45, 46, 47, 48]
  ];

  // Soma das linhas e construção da segunda matriz
  List<double> segundaMatriz = [];
  double somatorioTotal = 0;

  for (int i = 0; i < 8; i++) {
    double somaLinha = 0;
    for (int j = 0; j < 6; j++) {
      somaLinha += matriz[i][j];
      somatorioTotal += matriz[i][j];
    }
    segundaMatriz.add(somaLinha);
  }

  // Exibição dos somatórios
  print("Somatório dos elementos da primeira matriz: $somatorioTotal");
  print("Somatório dos elementos da segunda matriz: ${segundaMatriz.reduce((a, b) => a + b)}");
}
