// Realizar a leitura dos valores de quatro notas bimestrais de uma aluno, calcular a média aritmética e informar se o aluno foi aprovado ou reprovado. 
//A nota para ser aprovado é 5.

void main() {

  double nota1 = 7;

  double nota2 = 9;

  double nota3 = 4;

  double nota4 = 7;

  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  if (media >= 5.0) {
    print("O aluno foi aprovado com média $media.");
  } else {
    print("O aluno foi reprovado com média $media.");
  }
}
