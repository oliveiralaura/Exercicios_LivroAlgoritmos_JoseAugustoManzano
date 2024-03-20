// Elaborar um programa que leia sucessivamente valores numéricos e apresente no final o somatório, a média e o total de velores lidos. O programa deve ler os valores enquanto o usuário estiver fornecendo valores positivos.

void main() {
  List<int> valores = [10, 20, 30, 40, -1]; 

  int somatorio = 0;
  int quantidadeValores = 0;

  for (int valor in valores) {

    if (valor < 0) {
      break; 
    }

    somatorio += valor;
    quantidadeValores++;
  }

  double media = somatorio / quantidadeValores;

  print("Somatório dos valores: $somatorio");
  print("Total de valores lidos: $quantidadeValores");
  print("Média dos valores: $media");
}
