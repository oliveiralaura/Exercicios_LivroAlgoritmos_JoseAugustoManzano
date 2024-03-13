// Exercício 112: Cadastro de Pessoas e Alturas

// Descrição:
// Elaborar um programa que armazene o nome e a altura de 15 pessoas com o uso de registros. O programa deve usar um menu que execute as seguintes etapas:

// Passo a Passo:

// 1. Cadastrar os 15 registros:
//    - Solicitar ao usuário que insira o nome e a altura de 15 pessoas.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Apresentar registros (nome e altura) das pessoas com 1.5 m e menores:
//    - Percorrer a lista de registros e exibir os nomes e alturas das pessoas com 1.5 m ou menos.

// 3. Apresentar os registros (nome e altura) das pessoas com mais de 1.5 m:
//    - Percorrer a lista de registros e exibir os nomes e alturas das pessoas com mais de 1.5 m.

// 4. Apresentar os registros (nome e altura) das pessoas com mais de 1.5 m e menores de 2.9 m:
//    - Percorrer a lista de registros e exibir os nomes e alturas das pessoas com mais de 1.5 m e menos de 2.9 m.

// 5. Apresentar todos os registros com média estraida de todas as alturas armazenadas:
//    - Calcular a média das alturas das pessoas cadastradas e exibir todos os registros com essa média.

// 6. Sair do programa.

// Exemplo de cadastro:
// Registro 1:
// Nome: João
// Altura: 1.70 m

// Registro 2:
// Nome: Maria
// Altura: 1.45 m

// ...

// Registro 15:
// Nome: Pedro
// Altura: 1.85 m

// Exemplo de apresentação (opção b):
// Pessoas com 1.5 m ou menos:
// - Maria: 1.45 m
// ...

// Exemplo de apresentação (opção c):
// Pessoas com mais de 1.5 m:
// - João: 1.70 m
// - Pedro: 1.85 m
// ...

// Exemplo de apresentação (opção d):
// Pessoas com mais de 1.5 m e menos de 2.9 m:
// - João: 1.70 m
// - Pedro: 1.85 m
// ...

// Exemplo de apresentação (opção e):
// Média de altura das pessoas: 1.65 m

// Exemplo em Pseudocódigo:
// pessoa = estrutura {nome, altura}
// pessoas[15] = vetor de pessoas
// 
// PROCEDIMENTO cadastrar_pessoas(pessoas)
//     PARA i DE 0 ATÉ 14 FAÇA
//         ESCREVER "Cadastro da pessoa", i + 1
//         ESCREVER "Nome da pessoa:"
//         LER pessoas[i].nome
//         ESCREVER "Altura da pessoa (em metros):"
//         LER pessoas[i].altura
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO apresentar_pessoas_ate_1_5(pessoas)
//     ESCREVER "Pessoas com 1.5 m ou menos:"
//     PARA i DE 0 ATÉ 14 FAÇA
//         SE pessoas[i].altura <= 1.5 ENTÃO
//             ESCREVER "-", pessoas[i].nome, ":", pessoas[i].altura, "m"
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO apresentar_pessoas_mais_1_5(pessoas)
//     ESCREVER "Pessoas com mais de 1.5 m:"
//     PARA i DE 0 ATÉ 14 FAÇA
//         SE pessoas[i].altura > 1.5 ENTÃO
//             ESCREVER "-", pessoas[i].nome, ":", pessoas[i].altura, "m"
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO apresentar_pessoas_entre_1_5_2_9(pessoas)
//     ESCREVER "Pessoas com mais de 1.5 m e menos de 2.9 m:"
//     PARA i DE 0 ATÉ 14 FAÇA
//         SE pessoas[i].altura > 1.5 E pessoas[i].altura < 2.9 ENTÃO
//             ESCREVER "-", pessoas[i].nome, ":", pessoas[i].altura, "m"
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO calcular_media_alturas(pessoas)
//     soma_alturas = 0
//     PARA i DE 0 ATÉ 14 FAÇA
//         soma_alturas = soma_alturas + pessoas[i].altura
//     FIM PARA
//     media_alturas = soma_alturas / 15
//     ESCREVER "Média de altura das pessoas:", media_alturas, "m"
// FIM PROCEDIMENTO

import 'dart:io';

class Pessoa {
  late String nome;
  late double altura;

  Pessoa(this.nome, this.altura);
}

void main() {
  List<Pessoa> pessoas = List.filled(15, Pessoa('', 0.0));

  while (true) {
    print("\n=== MENU ===");
    print("1. Cadastrar Pessoas");
    print("2. Pessoas com 1.5 m ou menos");
    print("3. Pessoas com mais de 1.5 m");
    print("4. Pessoas com mais de 1.5 m e menos de 2.9 m");
    print("5. Média de Alturas");
    print("6. Sair");

    stdout.write("Escolha uma opção: ");
    var opcao = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcao) {
      case 1:
        cadastrarPessoas(pessoas);
        break;
      case 2:
        apresentarPessoasAte1_5(pessoas);
        break;
      case 3:
        apresentarPessoasMais1_5(pessoas);
        break;
      case 4:
        apresentarPessoasEntre1_5_2_9(pessoas);
        break;
      case 5:
        calcularMediaAlturas(pessoas);
        break;
      case 6:
        print("Programa encerrado.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

void cadastrarPessoas(List<Pessoa> pessoas) {
  for (int i = 0; i < 15; i++) {
    print("\nCadastro da pessoa ${i + 1}:");
    stdout.write("Nome da pessoa: ");
    var nome = stdin.readLineSync() ?? '';
    stdout.write("Altura da pessoa (em metros): ");
    var altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
    pessoas[i] = Pessoa(nome, altura);
  }
}

void apresentarPessoasAte1_5(List<Pessoa> pessoas) {
  print("\nPessoas com 1.5 m ou menos:");
  for (var pessoa in pessoas) {
    if (pessoa.altura <= 1.5) {
      print("- ${pessoa.nome}: ${pessoa.altura} m");
    }
  }
}

void apresentarPessoasMais1_5(List<Pessoa> pessoas) {
  print("\nPessoas com mais de 1.5 m:");
  for (var pessoa in pessoas) {
    if (pessoa.altura > 1.5) {
      print("- ${pessoa.nome}: ${pessoa.altura} m");
    }
  }
}

void apresentarPessoasEntre1_5_2_9(List<Pessoa> pessoas) {
  print("\nPessoas com mais de 1.5 m e menos de 2.9 m:");
  for (var pessoa in pessoas) {
    if (pessoa.altura > 1.5 && pessoa.altura < 2.9) {
      print("- ${pessoa.nome}: ${pessoa.altura} m");
    }
  }
}

void calcularMediaAlturas(List<Pessoa> pessoas) {
  double somaAlturas = 0;
  for (var pessoa in pessoas) {
    somaAlturas += pessoa.altura;
  }
  double media = somaAlturas / pessoas.length;
  print("\nMédia de altura das pessoas: $media m");
}
