// Exercício 116: Cadastro de Pessoas e Alturas

// Descrição:
// Elaborar um programa que armazene o nome e a altura de 15 pessoas com o uso de registros. O programa deve utilizar subprogramas tanto na apresentação do menu como de suas rotinas para a execução das seguintes etapas:

// Passo a Passo:

// 1. Cadastrar os 15 registros:
//    - Solicitar ao usuário que insira o nome e a altura de 15 pessoas.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Apresentar os registros (nome e altura) das pessoas com 1.5 m ou menos:
//    - Exibir os registros das pessoas cuja altura seja igual ou menor que 1.5 metros.

// 3. Apresentar os registros (nome e altura) das pessoas com mais de 1.5 m:
//    - Exibir os registros das pessoas cuja altura seja maior que 1.5 metros.

// 4. Apresentar os registros (nome e altura) das pessoas:
//    - Exibir todos os registros das pessoas, mostrando nome e altura.

// 5. Apresentar todos os registros com a média extraída de todas as alturas armazenadas:
//    - Calcular a média das alturas de todas as pessoas cadastradas.
//    - Exibir todos os registros das pessoas juntamente com a média das alturas.

// 6. Sair do programa de cadastro.

// Exemplo em Pseudocódigo:
// pessoa = estrutura {nome, altura}
// pessoas[15] = vetor de pessoa

// PROCEDIMENTO cadastrar_registros(pessoas)
//     PARA i DE 0 ATÉ 14 FAÇA
//         ESCREVER "Cadastro da Pessoa", i + 1
//         ESCREVER "Nome da Pessoa:"
//         LER pessoas[i].nome
//         ESCREVER "Altura da Pessoa (em metros):"
//         LER pessoas[i].altura
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_pessoas_menores_ou_iguais_a_1_5(pessoas)
//     ESCREVER "Pessoas com 1.5 m ou menos:"
//     PARA CADA pessoa EM pessoas FAÇA
//         SE pessoa.altura <= 1.5 ENTÃO
//             ESCREVER "-", pessoa.nome, ":", pessoa.altura, "m"
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_pessoas_maiores_que_1_5(pessoas)
//     ESCREVER "Pessoas com mais de 1.5 m:"
//     PARA CADA pessoa EM pessoas FAÇA
//         SE pessoa.altura > 1.5 ENTÃO
//             ESCREVER "-", pessoa.nome, ":", pessoa.altura, "m"
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_todos_os_registros(pessoas)
//     ESCREVER "Todos os registros:"
//     PARA CADA pessoa EM pessoas FAÇA
//         ESCREVER "-", pessoa.nome, ":", pessoa.altura, "m"
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO calcular_media_de_alturas(pessoas)
//     soma = 0
//     PARA CADA pessoa EM pessoas FAÇA
//         soma = soma + pessoa.altura
//     FIM PARA
//     media = soma / 15
//     ESCREVER "Média de altura das pessoas:", media, "m"
// FIM PROCEDIMENTO

import 'dart:io';

class Pessoa {
  String nome;
  double altura;

  Pessoa(this.nome, this.altura);
}

void main() {
  List<Pessoa> pessoas = List.generate(15, (index) => Pessoa('', 0.0));

  // Procedimento para cadastrar registros
  void cadastrarRegistros() {
    for (int i = 0; i < 15; i++) {
      print("Cadastro da Pessoa ${i + 1}");
      stdout.write("Nome da Pessoa: ");
      pessoas[i].nome = stdin.readLineSync()!;
      stdout.write("Altura da Pessoa (em metros): ");
      pessoas[i].altura = double.parse(stdin.readLineSync()!);
    }
  }

  // Procedimento para apresentar pessoas com 1.5 m ou menos
  void apresentarPessoasMenoresOuIguaisA1_5() {
    print("Pessoas com 1.5 m ou menos:");
    for (Pessoa pessoa in pessoas) {
      if (pessoa.altura <= 1.5) {
        print("- ${pessoa.nome}: ${pessoa.altura}m");
      }
    }
  }

  // Procedimento para apresentar pessoas com mais de 1.5 m
  void apresentarPessoasMaioresQue1_5() {
    print("Pessoas com mais de 1.5 m:");
    for (Pessoa pessoa in pessoas) {
      if (pessoa.altura > 1.5) {
        print("- ${pessoa.nome}: ${pessoa.altura}m");
      }
    }
  }

  // Procedimento para apresentar todos os registros
  void apresentarTodosOsRegistros() {
    print("Todos os registros:");
    for (Pessoa pessoa in pessoas) {
      print("- ${pessoa.nome}: ${pessoa.altura}m");
    }
  }

  // Procedimento para calcular a média de alturas
  void calcularMediaDeAlturas() {
    double soma = 0;
    for (Pessoa pessoa in pessoas) {
      soma += pessoa.altura;
    }
    double media = soma / 15;
    print("Média de altura das pessoas: $media m");
  }

  int opcao;
  do {
    print("\nMenu:");
    print("1. Cadastrar Registros");
    print("2. Apresentar Pessoas com 1.5m ou Menos");
    print("3. Apresentar Pessoas com Mais de 1.5m");
    print("4. Apresentar Todos os Registros");
    print("5. Calcular Média de Alturas");
    print("6. Sair");

    stdout.write("Escolha uma opção (1-6): ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarRegistros();
        break;
      case 2:
        apresentarPessoasMenoresOuIguaisA1_5();
        break;
      case 3:
        apresentarPessoasMaioresQue1_5();
        break;
      case 4:
        apresentarTodosOsRegistros();
        break;
      case 5:
        calcularMediaDeAlturas();
        break;
      case 6:
        print("Programa encerrado.");
        break;
      default:
        print("Opção inválida. Tente novamente.");
        break;
    }
  } while (opcao != 6);
}
