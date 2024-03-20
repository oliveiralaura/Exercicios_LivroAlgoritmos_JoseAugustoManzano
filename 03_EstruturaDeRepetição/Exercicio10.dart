// Elaborar um programa que apresente os valores de conversão de graus Celsius em graus Fahrenheit, de dez em dez graus, 
//iniciando a contagem em 10 graus Celsius e finalizando em cem graus Celsius.
void main() {
  var celsiusInicial = 10;
  var celsiusFinal = 100;
  var incremento = 10;

  print("Conversão de Celsius para Fahrenheit:");
  for (var celsius = celsiusInicial; celsius <= celsiusFinal; celsius += incremento) {
    var fahrenheit = (celsius * 9/5) + 32;
    print("$celsius graus Celsius = $fahrenheit graus Fahrenheit");
  }
}
