// Exercício 103: Soma de Linhas e Colunas em Matriz

// Descrição:
// Este exercício consiste em desenvolver um programa que faça a leitura de 20 valores inteiros em uma matriz com quatro linhas e cinco colunas. Construir uma segunda matriz com quatro elementos que seja formada pelo somatório dos elementos correspondentes de cada linha da primeira matriz. Construir também uma terceira matriz com cinco elementos que seja formada pelo somatório de cada elemento das colunas da primeira matriz.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com quatro linhas e cinco colunas.
//    - Aguarde a entrada do usuário.

// 2. Soma de Linhas:
//    - Para cada linha da primeira matriz, some todos os elementos e armazene o resultado na segunda matriz.

// 3. Soma de Colunas:
//    - Para cada coluna da primeira matriz, some todos os elementos e armazene o resultado na terceira matriz.

// 4. Saída de Dados:
//    - Apresente a segunda matriz e a terceira matriz.

// Exemplo em Pseudocódigo:

// matriz = lerMatriz(4, 5) // função para ler matriz com 4 linhas e 5 colunas
// segundaMatriz = novaMatriz(1, 4) // função para criar nova matriz com 1 linha e 4 colunas
// terceiraMatriz = novaMatriz(1, 5) // função para criar nova matriz com 1 linha e 5 colunas

// PARA cada linha i da matriz FAÇA
//     somaLinha = 0
//     PARA cada coluna j da matriz FAÇA
//         somaLinha = somaLinha + matriz[i][j]
//         terceiraMatriz[0][j] = terceiraMatriz[0][j] + matriz[i][j]
//     segundaMatriz[0][i] = somaLinha

// EXIBIR "Segunda Matriz:", segundaMatriz
// EXIBIR "Terceira Matriz:", terceiraMatriz

void main() {
  // Definição da matriz
  List<List<int>> matriz = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20]
  ];

  // Inicialização das matrizes de soma de linhas e colunas
  List<List<int>> segundaMatriz = List.generate(1, (index) => List.filled(4, 0));
  List<List<int>> terceiraMatriz = List.generate(1, (index) => List.filled(5, 0));

  // Soma de linhas e colunas
  for (int i = 0; i < 4; i++) {
    int somaLinha = 0;
    for (int j = 0; j < 5; j++) {
      somaLinha += matriz[i][j];
      terceiraMatriz[0][j] += matriz[i][j];
    }
    segundaMatriz[0][i] = somaLinha;
  }

  // Exibição das matrizes de soma de linhas e colunas
  print("Segunda Matriz: $segundaMatriz");
  print("Terceira Matriz: $terceiraMatriz");
}
