// Elaborar um programa que apresente os quadrados dos valores inteiros existentes entre os números 15 e 200 contando de 3 em 3.
void main() {
  int resultado = dividir(20, 4);
  print("O resultado da divisão é: $resultado");
}
 
int dividir(int dividendo, int divisor) {
  int resultado = 0;
 
  while (dividendo >= divisor) {
    dividendo -= divisor;
    resultado++;
  }
 
  return resultado;
}