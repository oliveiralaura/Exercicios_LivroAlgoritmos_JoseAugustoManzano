// Exercício 82: Contagem de Números Pares e Ímpares em um Vetor

// Descrição:
// Este exercício consiste em desenvolver um programa que leia um vetor com 30 elementos do tipo inteiro. Ao final, o programa deve apresentar as quantidades de valores pares e ímpares existentes no vetor.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia os 30 elementos para o vetor.
//    - Aguarde a entrada dos valores.

// 2. Contagem de Números Pares e Ímpares:
//    - Para cada elemento do vetor, verifique se é par ou ímpar e incremente o contador correspondente.

// 3. Exibição dos Resultados:
//    - Apresente as quantidades de números pares e ímpares no vetor.

// Exemplo em Pseudocódigo:
// ENTRADA: vetor
// pares = 0
// ímpares = 0
// PARA i DE 0 ATÉ 29 FAÇA
//     valor = LER "Digite o elemento " + (i + 1) + " do vetor: "
//     SE valor % 2 == 0 ENTÃO
//         pares = pares + 1
//     SENÃO
//         ímpares = ímpares + 1
// EXIBIR "Quantidade de números pares:", pares
// EXIBIR "Quantidade de números ímpares:", ímpares
void main() {
  var vetor = [
    10, 15, 20, 25, 30, 35, 40, 45, 50, 55,
    60, 65, 70, 75, 80, 85, 90, 95, 100, 105,
    110, 115, 120, 125, 130, 135, 140, 145, 150, 155
  ];

  var pares = 0;
  var impares = 0;

  for (var i = 0; i < 30; i++) {
    if (vetor[i] % 2 == 0) {
      pares++;
    } else {
      impares++;
    }
  }

  print("números pares: $pares");
  print("números ímpares: $impares");
}
