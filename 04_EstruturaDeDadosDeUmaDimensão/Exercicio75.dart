// Exercício 75: Conversão de Temperaturas de Celsius para Fahrenheit

// Descrição:
// Este exercício consiste em desenvolver um programa que leia 25 elementos (valores reais) para temperaturas em graus Celsius e armazene os valores em um vetor. Em seguida, o programa deve construir outro vetor onde seus elementos são as temperaturas do primeiro vetor convertido para Fahrenheit.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia as 25 temperaturas em graus Celsius.
//    - Aguarde a entrada dos valores.

// 2. Inicialização:
//    - Inicialize o vetor de temperaturas em Fahrenheit como vazio.

// 3. Conversão para Fahrenheit:
//    - Para cada temperatura em Celsius, converta para Fahrenheit e adicione ao vetor de temperaturas em Fahrenheit.

// 4. Exibição dos Vetores:
//    - Apresente os elementos do vetor de temperaturas em Celsius.
//    - Apresente os elementos do vetor de temperaturas em Fahrenheit.

// Exemplo em Pseudocódigo:
// ENTRADA: vetorCelsius
// vetorFahrenheit = []
// PARA i DE 0 ATÉ 24 FAÇA
//     fahrenheit = (vetorCelsius[i] * 9/5) + 32
//     ADICIONAR fahrenheit À vetorFahrenheit
// EXIBIR "Vetor de temperaturas em Celsius:", vetorCelsius
// EXIBIR "Vetor de temperaturas em Fahrenheit:", vetorFahrenheit
void main() {
  var vetorCelsius = [20.0, 22.5, 25.0, 27.5, 30.0, 32.5, 35.0, 37.5, 40.0, 42.5, 45.0, 47.5, 50.0, 52.5, 55.0, 57.5, 60.0, 62.5, 65.0, 67.5, 70.0, 72.5, 75.0, 77.5, 80.0];

  var vetorFahrenheit = <double>[];

  for (var temperaturaCelsius in vetorCelsius) {
    var fahrenheit = (temperaturaCelsius * 9 / 5) + 32;
    vetorFahrenheit.add(fahrenheit);
  }

  print("Celsius: $vetorCelsius");
  print("Fahrenheit: $vetorFahrenheit");
}
