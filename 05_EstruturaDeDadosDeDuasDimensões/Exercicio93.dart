// Exercício 93: Conversão de Temperaturas

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz com quatro linhas e cinco colunas, contendo temperaturas em Celsius, e então crie uma segunda matriz com os valores de cada elemento da primeira matriz convertidos em Fahrenheit.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia a matriz com quatro linhas e cinco colunas contendo temperaturas em Celsius.
//    - Aguarde a entrada do usuário.

// 2. Inicialização da Matriz Fahrenheit:
//    - Inicialize a matriz Fahrenheit com as mesmas dimensões da matriz original.

// 3. Conversão para Fahrenheit:
//    - Para cada elemento da matriz original, converta de Celsius para Fahrenheit e armazene na matriz Fahrenheit.

// 4. Saída de Dados:
//    - Apresente as duas matrizes: a original e a Fahrenheit.

// Exemplo em Pseudocódigo:

// matrizCelsius = lerMatriz(4, 5) // função para ler matriz com 4 linhas e 5 colunas
// matrizFahrenheit = novaMatriz(4, 5) // função para criar nova matriz com 4 linhas e 5 colunas

// PARA cada linha i da matrizCelsius FAÇA
//     PARA cada coluna j da matrizCelsius FAÇA
//         matrizFahrenheit[i][j] = converterParaFahrenheit(matrizCelsius[i][j])

// EXIBIR "Matriz Celsius:"
// EXIBIR matrizCelsius

// EXIBIR "Matriz Fahrenheit:"
// EXIBIR matrizFahrenheit

void main() {
  // Definição da matriz Celsius
  List<List<double>> matrizCelsius = [
    [0, 10, 20, 30, 40],
    [5, 15, 25, 35, 45],
    [10, 20, 30, 40, 50],
    [15, 25, 35, 45, 55]
  ];

  // Construção da matriz Fahrenheit
  List<List<double>> matrizFahrenheit = construirMatrizFahrenheit(matrizCelsius);

  // Exibição das matrizes
  print("Matriz Celsius:");
  exibirMatriz(matrizCelsius);
  print("\nMatriz Fahrenheit:");
  exibirMatriz(matrizFahrenheit);
}

List<List<double>> construirMatrizFahrenheit(List<List<double>> matrizCelsius) {
  List<List<double>> matrizFahrenheit = [];
  for (int i = 0; i < 4; i++) {
    matrizFahrenheit.add([]);
    for (int j = 0; j < 5; j++) {
      matrizFahrenheit[i].add(converterParaFahrenheit(matrizCelsius[i][j]));
    }
  }
  return matrizFahrenheit;
}

double converterParaFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

void exibirMatriz(List<List<double>> matriz) {
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      print("${matriz[i][j]} ");
    }
    print("");
  }
}

