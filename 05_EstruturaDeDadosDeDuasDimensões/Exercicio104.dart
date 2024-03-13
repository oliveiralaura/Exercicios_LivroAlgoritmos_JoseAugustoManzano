// Exercício 104: Operações com Matrizes

// Descrição:
// Este exercício consiste em desenvolver um programa que leia quatro matrizes de uma linha e quatro colunas. Construir uma quinta matriz com quatro linhas e quatro colunas, sendo a primeira linha formada pelo dobro dos valores dos elementos da primeira matriz, a segunda linha formada pelo triplo dos valores dos elementos da segunda matriz, e a terceira linha formada pelo quádruplo dos valores dos elementos da terceira matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia as quatro matrizes com uma linha e quatro colunas.
//    - Aguarde a entrada do usuário.

// 2. Construção da Quinta Matriz:
//    - Para cada matriz de entrada, multiplique os valores dos elementos por 2, 3, 4 e armazene na quinta matriz, respectivamente.

// 3. Saída de Dados:
//    - Apresente a quinta matriz.

// Exemplo em Pseudocódigo:

// matriz1 = lerMatriz(1, 4) // função para ler matriz com 1 linha e 4 colunas
// matriz2 = lerMatriz(1, 4) // função para ler matriz com 1 linha e 4 colunas
// matriz3 = lerMatriz(1, 4) // função para ler matriz com 1 linha e 4 colunas
// matriz4 = lerMatriz(1, 4) // função para ler matriz com 1 linha e 4 colunas

// quintaMatriz = novaMatriz(4, 4) // função para criar nova matriz com 4 linhas e 4 colunas

// PARA cada coluna i da matriz FAÇA
//     quintaMatriz[0][i] = matriz1[0][i] * 2
//     quintaMatriz[1][i] = matriz2[0][i] * 3
//     quintaMatriz[2][i] = matriz3[0][i] * 4
//     quintaMatriz[3][i] = matriz4[0][i] * 4

// EXIBIR "Quinta Matriz:", quintaMatriz
void main() {
  // Definição das quatro matrizes
  List<List<int>> matriz1 = [
    [1, 2, 3, 4],
  ];
  List<List<int>> matriz2 = [
    [5, 6, 7, 8],
  ];
  List<List<int>> matriz3 = [
    [9, 10, 11, 12],
  ];
  List<List<int>> matriz4 = [
    [13, 14, 15, 16],
  ];

  // Inicialização da quinta matriz
  List<List<int>> quintaMatriz = novaMatriz(4, 4);

  // Construção da quinta matriz
  for (int i = 0; i < 4; i++) {
    quintaMatriz[0][i] = matriz1[0][i] * 2;
    quintaMatriz[1][i] = matriz2[0][i] * 3;
    quintaMatriz[2][i] = matriz3[0][i] * 4;
    quintaMatriz[3][i] = matriz4[0][i] * 4;
  }

  // Exibição da quinta matriz
  print("Quinta Matriz:");
  exibirMatriz(quintaMatriz);
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

