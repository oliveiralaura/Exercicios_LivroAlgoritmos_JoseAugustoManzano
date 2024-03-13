// Exercício 91: Manipulação de Matrizes

// Descrição:
// Este exercício consiste em desenvolver um programa que leia duas matrizes com uma linha de doze colunas e construa uma terceira matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia as duas matrizes com uma linha de doze colunas cada.
//    - Aguarde a entrada do usuário.

// 2. Inicialização da Matriz Resultante:
//    - Inicialize a matriz resultante com duas colunas e doze linhas.

// 3. Preenchimento da Matriz Resultante:
//    - Para cada elemento da primeira matriz, multiplique por 2 e coloque na primeira coluna da matriz resultante.
//    - Para cada elemento da segunda matriz, subtraia 5 e coloque na segunda coluna da matriz resultante.

// 4. Saída de Dados:
//    - Apresente as três matrizes: a primeira, a segunda e a resultante.

// Exemplo em Pseudocódigo:

// matriz1 = lerMatriz(1, 12) // função para ler matriz com 1 linha e 12 colunas
// matriz2 = lerMatriz(2, 12) // função para ler matriz com 1 linha e 12 colunas
// matrizResultado = novaMatriz(12, 2) // função para criar nova matriz com 12 linhas e 2 colunas

// PARA cada elemento i da matriz1 FAÇA
//     matrizResultado[i][0] = matriz1[i] * 2

// PARA cada elemento i da matriz2 FAÇA
//     matrizResultado[i][1] = matriz2[i] - 5

// EXIBIR "Matriz 1:"
// EXIBIR matriz1

// EXIBIR "Matriz 2:"
// EXIBIR matriz2

// EXIBIR "Matriz Resultante:"
// EXIBIR matrizResultado
// 

void main() {
  // Leitura das matrizes
  List<int> matriz1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  List<int> matriz2 = [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

  // Construção da matriz resultante
  List<List<int>> matrizResultante = construirMatrizResultante(matriz1, matriz2);

  // Exibição das matrizes
  print("Matriz 1:");
  exibirMatriz(matriz1);
  print("\nMatriz 2:");
  exibirMatriz(matriz2);
  print("\nMatriz Resultante:");
  exibirMatriz2x12(matrizResultante);
}

List<List<int>> construirMatrizResultante(List<int> matriz1, List<int> matriz2) {
  List<List<int>> matrizResultante = [];
  for (int i = 0; i < 12; i++) {
    matrizResultante.add([matriz1[i] * 2, matriz2[i] - 5]);
  }
  return matrizResultante;
}

void exibirMatriz(List<int> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    print("${matriz[i]}");
  }
}

void exibirMatriz2x12(List<List<int>> matriz) {
  for (int i = 0; i < 12; i++) {
    print("${matriz[i][0]} ${matriz[i][1]}");
  }
}
