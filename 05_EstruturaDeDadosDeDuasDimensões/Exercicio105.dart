// Exercício 105: Soma de Matrizes com Condições

// Descrição:
// Este exercício consiste em desenvolver um programa que leia duas matrizes com quatro linhas e cinco colunas. A primeira matriz deve ser formada por valores divisíveis por 3 e 4, enquanto a segunda matriz deve ser formada por valores divisíveis por 5 e 6. As entradas dos valores nas matrizes devem ser validadas pelo programa, e não pelo usuário. Construir e apresentar uma terceira matriz de mesma dimensão, que seja formada pela soma dos elementos da primeira matriz com os elementos da segunda. Apresentar as matrizes.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Gerar as matrizes com valores divisíveis por 3, 4, 5 e 6.

// 2. Construção da Terceira Matriz:
//    - Para cada elemento das matrizes, somar os valores correspondentes e armazenar na terceira matriz.

// 3. Saída de Dados:
//    - Apresentar as três matrizes.

// Exemplo em Pseudocódigo:

// GerarMatrizDivisivelPor3e4(matriz1, 4, 5) // função para gerar matriz com valores divisíveis por 3 e 4
// GerarMatrizDivisivelPor5e6(matriz2, 4, 5) // função para gerar matriz com valores divisíveis por 5 e 6

// terceiraMatriz = novaMatriz(4, 5) // função para criar nova matriz com 4 linhas e 5 colunas

// PARA cada linha i da matriz FAÇA
//     PARA cada coluna j da matriz FAÇA
//         terceiraMatriz[i][j] = matriz1[i][j] + matriz2[i][j]

// EXIBIR "Terceira Matriz:", terceiraMatriz

import 'dart:math';

void main() {
  // Definição das dimensões das matrizes
  int linhas = 4;
  int colunas = 5;

  // Gerar as matrizes com valores divisíveis por 3, 4, 5 e 6
  List<List<int>> matriz1 = gerarMatrizDivisivelPor3e4(linhas, colunas);
  List<List<int>> matriz2 = gerarMatrizDivisivelPor5e6(linhas, colunas);

  // Construir a terceira matriz pela soma das duas matrizes
  List<List<int>> terceiraMatriz = novaMatriz(linhas, colunas);
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      terceiraMatriz[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }

  // Exibir as três matrizes
  print("Matriz 1:");
  exibirMatriz(matriz1);
  print("\nMatriz 2:");
  exibirMatriz(matriz2);
  print("\nTerceira Matriz:");
  exibirMatriz(terceiraMatriz);
}

// Função para gerar matriz com valores divisíveis por 3 e 4
List<List<int>> gerarMatrizDivisivelPor3e4(int linhas, int colunas) {
  List<List<int>> matriz = novaMatriz(linhas, colunas);
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      matriz[i][j] = Random().nextInt(20) * 12; // Divisível por 3 e 4
    }
  }
  return matriz;
}

// Função para gerar matriz com valores divisíveis por 5 e 6
List<List<int>> gerarMatrizDivisivelPor5e6(int linhas, int colunas) {
  List<List<int>> matriz = novaMatriz(linhas, colunas);
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      matriz[i][j] = Random().nextInt(20) * 30; // Divisível por 5 e 6
    }
  }
  return matriz;
}

// Função para criar uma nova matriz de tamanho m x n preenchida com zeros
List<List<int>> novaMatriz(int m, int n) {
  List<List<int>> matriz = [];
  for (int i = 0; i < m; i++) {
    matriz.add(List.filled(n, 0));
  }
  return matriz;
}

// Função para exibir uma matriz
void exibirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    print(matriz[i]);
  }
}
