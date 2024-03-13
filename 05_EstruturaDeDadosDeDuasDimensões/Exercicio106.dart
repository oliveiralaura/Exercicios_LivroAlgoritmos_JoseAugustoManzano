// Exercício 106: Subtração de Matrizes com Condições

// Descrição:
// Este exercício consiste em desenvolver um programa que leia duas matrizes com quatro linhas e cinco colunas. A primeira matriz deve ser formada por valores divisíveis por 3 e 4, enquanto a segunda matriz deve ser formada por valores divisíveis por 5 e 6. As entradas dos valores nas matrizes devem ser validadas pelo programa, e não pelo usuário. Construir e apresentar uma terceira matriz da mesma dimensão que contenha a subtração dos elementos da primeira matriz pelos elementos da segunda.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia as duas matrizes com quatro linhas e cinco colunas.
//    - Aguarde a entrada do usuário.

// 2. Construção da Terceira Matriz:
//    - Para cada elemento das matrizes, subtraia o elemento da segunda matriz do elemento da primeira matriz e armazene o resultado na terceira matriz.

// 3. Saída de Dados:
//    - Apresente a terceira matriz.

// Exemplo em Pseudocódigo:

// matriz1 = lerMatriz(4, 5) // função para ler matriz com 4 linhas e 5 colunas
// matriz2 = lerMatriz(4, 5) // função para ler matriz com 4 linhas e 5 colunas

// terceiraMatriz = novaMatriz(4, 5) // função para criar nova matriz com 4 linhas e 5 colunas

// PARA cada linha i da matriz FAÇA
//     PARA cada coluna j da matriz FAÇA
//         terceiraMatriz[i][j] = matriz1[i][j] - matriz2[i][j]

// EXIBIR "Terceira Matriz:", terceiraMatriz

import 'dart:math';

void main() {
  // Definição das dimensões das matrizes
  int linhas = 4;
  int colunas = 5;

  // Gerar as matrizes com valores divisíveis por 3, 4, 5 e 6
  List<List<int>> matriz1 = gerarMatrizDivisivelPor3e4(linhas, colunas);
  List<List<int>> matriz2 = gerarMatrizDivisivelPor5e6(linhas, colunas);

  // Construir a terceira matriz pela subtração das duas matrizes
  List<List<int>> terceiraMatriz = novaMatriz(linhas, colunas);
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      terceiraMatriz[i][j] = matriz1[i][j] - matriz2[i][j];
    }
  }

  // Exibir a terceira matriz
  print("Terceira Matriz:");
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

