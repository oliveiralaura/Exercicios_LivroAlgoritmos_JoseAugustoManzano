// Exercício 90: Manipulação de Matrizes

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz de uma dimensão com dez elementos. 
//Construir uma segunda matriz com três colunas de dez linhas sendo a primeira coluna formada pelos elementos 
//da primeira matriz somados com 5, a segunda formada pelo cálculo do fatorial de cada elemento correspondente na 
//primeira matriz e a terceira coluna formada pelo quadrado dos elementos da primeira.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia os elementos para a primeira matriz, considerando uma matriz de uma dimensão com dez elementos.
//    - Aguarde a entrada dos valores.

// 2. Construção da Matriz Resultante:
//    - Para cada posição (i, j) da matriz resultante, defina a primeira coluna como os elementos da primeira matriz 
//somados com 5, a segunda coluna como o cálculo do fatorial de cada elemento correspondente na primeira matriz e a 
//terceira coluna como o quadrado dos elementos da primeira matriz.

// 3. Exibição da Matriz Resultante:
//    - Apresente os elementos da matriz resultante.

// Exemplo em Pseudocódigo:
// ENTRADA: matriz1
// matriz_resultante = matriz vazia de 10x3
// PARA i DE 0 ATÉ 9 FAÇA
//     matriz_resultante[i][0] = matriz1[i] + 5
//     matriz_resultante[i][1] = calcular_fatorial(matriz1[i])
//     matriz_resultante[i][2] = matriz1[i] * matriz1[i]
// EXIBIR "Matriz Resultante:", matriz_resultante

void main() {
  List<int> matriz1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<List<int>> matrizResultante = construirMatrizResultante(matriz1);
  print("Matriz Resultante:");
  exibirMatriz(matrizResultante);
}

List<List<int>> construirMatrizResultante(List<int> matriz1) {
  List<List<int>> matrizResultante = [];
  for (int i = 0; i < 10; i++) {
    matrizResultante.add([
      matriz1[i] + 5,
      calcularFatorial(matriz1[i]),
      matriz1[i] * matriz1[i]
    ]);
  }
  return matrizResultante;
}

int calcularFatorial(int n) {
  int fatorial = 1;
  for (int i = 1; i <= n; i++) {
    fatorial *= i;
  }
  return fatorial;
}

void exibirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    print("${matriz[i][0]} ${matriz[i][1]} ${matriz[i][2]}");
  }
}
