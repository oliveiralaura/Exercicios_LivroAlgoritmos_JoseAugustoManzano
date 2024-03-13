// Exercício 95: Matriz com Somatório e Valores Específicos

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz do tipo inteiro com sete linhas e sete colunas e construa uma segunda matriz com base em regras específicas.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com sete linhas e sete colunas.
//    - Aguarde a entrada do usuário.

// 2. Inicialização da Matriz Final:
//    - Inicialize a matriz final com as mesmas dimensões da matriz original.

// 3. Preenchimento da Matriz Final:
//    - Para cada elemento da matriz original, aplique a regra de preenchimento na matriz final.

// 4. Saída de Dados:
//    - Apresente as duas matrizes: a original e a final.

// Exemplo em Pseudocódigo:

// matrizOriginal = lerMatriz(7, 7) // função para ler matriz com 7 linhas e 7 colunas
// matrizFinal = novaMatriz(7, 7) // função para criar nova matriz com 7 linhas e 7 colunas

// PARA cada linha i da matrizOriginal FAÇA
//     PARA cada coluna j da matrizOriginal FAÇA
//         SE i ≠ j OU i % 2 = 0 ENTÃO
//             matrizFinal[i][j] = somatorioAte(matrizOriginal[i][j])
//         SENÃO
//             matrizFinal[i][j] = 3 * matrizOriginal[i][j]

// EXIBIR "Matriz Original:"
// EXIBIR matrizOriginal

// EXIBIR "Matriz Final:"
// EXIBIR matrizFinal

void main() {
  // Definição da matriz original
  List<List<int>> matrizOriginal = [
    [1, 2, 3, 4, 5, 6, 7],
    [8, 9, 10, 11, 12, 13, 14],
    [15, 16, 17, 18, 19, 20, 21],
    [22, 23, 24, 25, 26, 27, 28],
    [29, 30, 31, 32, 33, 34, 35],
    [36, 37, 38, 39, 40, 41, 42],
    [43, 44, 45, 46, 47, 48, 49]
  ];

  // Construção da matriz final
  List<List<int>> matrizFinal = construirMatrizFinal(matrizOriginal);

  // Exibição das matrizes
  print("Matriz Original:");
  exibirMatriz(matrizOriginal);
  print("\nMatriz Final:");
  exibirMatriz(matrizFinal);
}

List<List<int>> construirMatrizFinal(List<List<int>> matrizOriginal) {
  List<List<int>> matrizFinal = [];
  for (int i = 0; i < 7; i++) {
    matrizFinal.add([]);
    for (int j = 0; j < 7; j++) {
      if (i != j || i % 2 == 0) {
        matrizFinal[i].add(somatorioAte(matrizOriginal[i][j]));
      } else {
        matrizFinal[i].add(3 * matrizOriginal[i][j]);
      }
    }
  }
  return matrizFinal;
}

int somatorioAte(int n) {
  int somatorio = 0;
  for (int i = 1; i <= n; i++) {
    somatorio += i;
  }
  return somatorio;
}

void exibirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      print("${matriz[i][j]} ");
    }
    print("");
  }
}
