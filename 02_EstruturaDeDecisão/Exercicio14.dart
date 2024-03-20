// Efetuar a leitura de três valores desconhecidos, soma-los e apresentar o resultado apenas se a soma for maior que 100.
void main() {
  var numero1 = 50;
  var numero2 = 40;
  var numero3 = 20;
  var soma = numero1 + numero2 + numero3;
  if (soma > 100) {
    print("A soma dos números é $soma, que é maior que 100.");
  } else {
    print("A soma dos números não é maior que 100.");
  }
}
