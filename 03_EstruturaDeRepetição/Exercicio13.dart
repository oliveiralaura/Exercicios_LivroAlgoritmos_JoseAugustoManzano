// Elaborar um programa que leia dez valores numéricos reais e apresente no final o somatório e a média dos valores lidos.
void main() {
  List<double> valores = [10.5, 15.2, 7.8, 3.6, 9.1, 12.4, 6.7, 14.9, 8.3, 11.0];
  double somatorio = 0;
 
  for (var valor in valores) {
    somatorio += valor;
  }
 
  var media = somatorio / valores.length;
 
  print("O somatório dos valores é: $somatorio");
  print("A média dos valores é: $media");
}
 