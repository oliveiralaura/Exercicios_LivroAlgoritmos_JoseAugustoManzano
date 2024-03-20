// Ler três valores vareiros e apresentar os valores dispostos em ordem crescente.


void main() {
  var valor1 =8 ;
  var valor2 =18 ;
  var valor3 =28 ;
  if (valor1 > valor2) {
    var temp = valor1;
    valor1 = valor2;
    valor2 = temp;
  }
  if (valor2 > valor3) {
    var temp = valor2;
    valor2 = valor3;
    valor3 = temp;
  }
  if (valor1 > valor2) {
    var temp = valor1;
    valor1 = valor2;
    valor2 = temp;
  }

  print("Valores em ordem crescente: $valor1, $valor2, $valor3");
}
