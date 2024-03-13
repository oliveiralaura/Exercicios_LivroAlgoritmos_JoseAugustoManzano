// Exercício 85: Contagem de Números Pares em uma Matriz

// Descrição:
// Este exercício consiste em desenvolver um programa que leia uma matriz com 15 elementos números inteiros e apresente o total de elementos pares existentes nesse vetor.

// Passo a Passo:

// 1. Entrada de Dados:
//    - Leia os 15 elementos para a matriz.
//    - Aguarde a entrada dos valores.

// 2. Contagem de Números Pares:
//    - Para cada elemento da matriz, verifique se é par e incremente o contador de números pares.

// 3. Exibição do Resultado:
//    - Apresente o total de números pares encontrados na matriz.

// Exemplo em Pseudocódigo:
// ENTRADA: matriz
// pares = 0
// PARA i DE 0 ATÉ 14 FAÇA
//     SE matriz[i] % 2 == 0 ENTÃO
//         pares = pares + 1
// EXIBIR "Total de números pares:", pares
void main() {
  var matriz = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  var pares = 0;

  for (var elemento in matriz) {
    if (elemento % 2 == 0) {
      pares++;
    }
  }

  print("Total de números pares: $pares");
}
