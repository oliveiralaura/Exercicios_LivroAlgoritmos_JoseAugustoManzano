// Exercício 92: Fatorial de Elementos de uma Matriz

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz com cinco linhas e quatro colunas e construa uma segunda matriz com o fatorial de cada elemento da primeira matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com cinco linhas e quatro colunas.
//    - Aguarde a entrada do usuário.

// 2. Inicialização da Matriz Fatorial:
//    - Inicialize a matriz fatorial com as mesmas dimensões da matriz original.

// 3. Cálculo do Fatorial:
//    - Para cada elemento da matriz original, calcule o fatorial e armazene na matriz fatorial.

// 4. Saída de Dados:
//    - Apresente as duas matrizes: a original e a fatorial.

// Exemplo em Pseudocódigo:

// matrizOriginal = lerMatriz(5, 4) // função para ler matriz com 5 linhas e 4 colunas
// matrizFatorial = novaMatriz(5, 4) // função para criar nova matriz com 5 linhas e 4 colunas

// PARA cada linha i da matrizOriginal FAÇA
//     PARA cada coluna j da matrizOriginal FAÇA
//         matrizFatorial[i][j] = calcularFatorial(matrizOriginal[i][j])

// EXIBIR "Matriz Original:"
// EXIBIR matrizOriginal

// EXIBIR "Matriz Fatorial:"
// EXIBIR matrizFatorial

void main() {
  // Definição da matriz original
  List<List<int>> matrizOriginal = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 16],
    [17, 18, 19, 20]
  ];

  // Construção da matriz fatorial
  List<List<int>> matrizFatorial = construirMatrizFatorial(matrizOriginal);

  // Exibição das matrizes
  print("Matriz Original:");
  exibirMatriz(matrizOriginal);
  print("\nMatriz Fatorial:");
  exibirMatriz(matrizFatorial);
}

List<List<int>> construirMatrizFatorial(List<List<int>> matrizOriginal) {
  List<List<int>> matrizFatorial = [];
  for (int i = 0; i < 5; i++) {
    matrizFatorial.add([]);
    for (int j = 0; j < 4; j++) {
      matrizFatorial[i].add(calcularFatorial(matrizOriginal[i][j]));
    }
  }
  return matrizFatorial;
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
    for (int j = 0; j < matriz[i].length; j++) {
      print("${matriz[i][j]} ");
    }
    print("");
  }
}
