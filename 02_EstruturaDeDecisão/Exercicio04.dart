//Ler os valores de quatro notas bimestrais de um aluno. Calcular a média aritmética. 
//Caso a média seja maior que 7 o aluno será aprovado, 
//caso contrário será solicitado a nota do exame para ser calculada a nova média que se for acima de 5 o aluno será aprovado em exame caso contrario reprovado.
// Realizar a leitura dos valores de quatro notas bimestrais de uma aluno, calcular a média aritmética e informar se o aluno foi aprovado ou reprovado. 
//A nota para ser aprovado é 5.

void main() {

  var nota1 = 7;

  var nota2 = 9;

  var nota3 = 4;

  var nota4 = 7;

  var media = (nota1 + nota2 + nota3 + nota4) / 4;

  if (media >= 7.0) {
    print("O aluno foi aprovado com média $media.");
  } else {
    print("O aluno foi reprovado com média $media.");
  }
}
