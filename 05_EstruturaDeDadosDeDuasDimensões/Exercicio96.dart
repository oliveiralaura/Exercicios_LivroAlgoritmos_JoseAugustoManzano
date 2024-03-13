// Exercício 96: Manipulação de Matrizes

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz com seis linhas e cinco colunas e construa uma segunda matriz com base em regras específicas.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com seis linhas e cinco colunas.
//    - Aguarde a entrada do usuário.

// 2. Inicialização da Matriz Modificada:
//    - Inicialize a matriz modificada com as mesmas dimensões da matriz original.

// 3. Preenchimento da Matriz Modificada:
//    - Para cada elemento da matriz original, aplique a regra de preenchimento na matriz modificada.

// 4. Saída de Dados:
//    - Apresente as duas matrizes: a original e a modificada.

// Exemplo em Pseudocódigo:

// matrizOriginal = lerMatriz(6, 5) // função para ler matriz com 6 linhas e 5 colunas
// matrizModificada = novaMatriz(6, 5) // função para criar nova matriz com 6 linhas e 5 colunas

// PARA cada linha i da matrizOriginal FAÇA
//     PARA cada coluna j da matrizOriginal FAÇA
//         SE matrizOriginal[i][j] % 2 = 0 ENTÃO
//             matrizModificada[i][j] = matrizOriginal[i][j] + 5
//         SENÃO
//             matrizModificada[i][j] = matrizOriginal[i][j] - 4

// EXIBIR "Matriz Original:"
// EXIBIR matrizOriginal

// EXIBIR "Matriz Modificada:"
// EXIBIR matrizModificada

void main() {
  // Definição da matriz original
  List<List<int>> matrizOriginal = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25],
    [26, 27, 28, 29, 30]
  ];

  // Construção da matriz modificada
  List<List<int>> matrizModificada = construirMatrizModificada(matrizOriginal);

  // Exibição das matrizes
  print("Matriz Original:");
  exibirMatriz(matrizOriginal);
  print("\nMatriz Modificada:");
  exibirMatriz(matrizModificada);
}

List<List<int>> construirMatrizModificada(List<List<int>> matrizOriginal) {
  List<List<int>> matrizModificada = [];
  for (int i = 0; i < 6; i++) {
    matrizModificada.add([]);
    for (int j = 0; j < 5; j++) {
      if (matrizOriginal[i][j] % 2 == 0) {
        matrizModificada[i].add(matrizOriginal[i][j] + 5);
      } else {
        matrizModificada[i].add(matrizOriginal[i][j] - 4);
      }
    }
  }
  return matrizModificada;
}

void exibirMatriz(List<List<int>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      print("${matriz[i][j]} ");
    }
    print("");
  }
}

