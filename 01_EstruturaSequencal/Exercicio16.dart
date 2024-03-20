// Elaborar um programa que leia o valor numérico correspondente ao salário mensal de um trabalhador e da porcentagem de aumento do salário. 
//Apresentar a valor do novo salário de do aumento concedido.


void main() {
  var salario = 700;
  var aumentoPercentual = 25;
  var aumento = salario * (aumentoPercentual / 100);
  var novoSalario = salario + aumento;
  print("O novo salário é: R\$ $novoSalario");
  print("O aumento concedido é: R\$ $aumento");
}
