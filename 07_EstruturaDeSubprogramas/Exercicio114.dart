// Exercício 114: Agenda de Contatos

// Descrição:
// Desenvolva um programa de agenda que contenha nomes, endereços e telefones de dez pessoas capaz de executar as seguintes ações.

// Passo a Passo:

// 1. Cadastrar os dez registros:
//    - Solicitar ao usuário que insira o nome, endereço e telefone de dez pessoas.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Pesquisar os dez registros, um de cada vez, pelo campo nome:
//    - Solicitar ao usuário que digite o nome da pessoa a ser pesquisada.
//    - Buscar o registro pelo nome especificado e apresentar o resultado da pesquisa.

// 3. Classificar por ordem alfabética os registros cadastrados:
//    - Ordenar os registros da agenda por ordem alfabética de nome.

// 4. Apresentar todos os registros:
//    - Exibir todos os registros da agenda, mostrando nome, endereço e telefone de cada pessoa.

// 5. Sair do programa de cadastro.

// Exemplo em Pseudocódigo:
// pessoa = estrutura {nome, endereco, telefone}
// agenda[10] = vetor de pessoas

// PROCEDIMENTO cadastrar_registros(agenda)
//     PARA i DE 0 ATÉ 9 FAÇA
//         ESCREVER "Cadastro do Registro", i + 1
//         ESCREVER "Nome:"
//         LER agenda[i].nome
//         ESCREVER "Endereço:"
//         LER agenda[i].endereco
//         ESCREVER "Telefone:"
//         LER agenda[i].telefone
//     FIM PARA
// FIM PROCEDIMENTO

// FUNÇÃO pesquisar_registro_por_nome(agenda, nome)
//     PARA i DE 0 ATÉ 9 FAÇA
//         SE agenda[i].nome == nome ENTÃO
//             RETORNAR agenda[i]
//         FIM SE
//     FIM PARA
//     RETORNAR "Registro não encontrado"
// FIM FUNÇÃO

// PROCEDIMENTO classificar_registros_por_nome(agenda)
//     ALGORITMO DE ORDENAÇÃO (por exemplo, Bubble Sort) para ordenar agenda por nome
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_todos_os_registros(agenda)
//     PARA i DE 0 ATÉ 9 FAÇA
//         ESCREVER "Registro", i + 1, ":"
//         ESCREVER "Nome:", agenda[i].nome
//         ESCREVER "Endereço:", agenda[i].endereco
//         ESCREVER "Telefone:", agenda[i].telefone
//     FIM PARA
// FIM PROCEDIMENTO

import 'dart:io';

class Pessoa {
  String nome;
  String endereco;
  String telefone;

  Pessoa(this.nome, this.endereco, this.telefone);
}

void main() {
  List<Pessoa> agenda = List.filled(10, Pessoa('', '', ''));

  // Procedimento para cadastrar registros
  void cadastrarRegistros() {
    for (int i = 0; i < 10; i++) {
      print("Cadastro do Registro ${i + 1}");
      stdout.write("Nome: ");
      agenda[i].nome = stdin.readLineSync()!;
      stdout.write("Endereço: ");
      agenda[i].endereco = stdin.readLineSync()!;
      stdout.write("Telefone: ");
      agenda[i].telefone = stdin.readLineSync()!;
    }
  }

  // Função para pesquisar registro por nome
  Pessoa? pesquisarRegistroPorNome(String nome) {
    for (int i = 0; i < 10; i++) {
      if (agenda[i].nome == nome) {
        return agenda[i];
      }
    }
    return null;
  }

  // Procedimento para classificar registros por nome (Bubble Sort)
  void classificarRegistrosPorNome() {
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9 - i; j++) {
        if (agenda[j].nome.compareTo(agenda[j + 1].nome) > 0) {
          Pessoa temp = agenda[j];
          agenda[j] = agenda[j + 1];
          agenda[j + 1] = temp;
        }
      }
    }
  }

  // Procedimento para apresentar todos os registros
  void apresentarTodosOsRegistros() {
    for (int i = 0; i < 10; i++) {
      print("Registro ${i + 1}:");
      print("Nome: ${agenda[i].nome}");
      print("Endereço: ${agenda[i].endereco}");
      print("Telefone: ${agenda[i].telefone}");
    }
  }

  int opcao;
  do {
    print("\nMenu:");
    print("1. Cadastrar Registros");
    print("2. Pesquisar Registro por Nome");
    print("3. Classificar Registros por Nome");
    print("4. Apresentar Todos os Registros");
    print("5. Sair");

    stdout.write("Escolha uma opção (1-5): ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarRegistros();
        break;
      case 2:
        stdout.write("Digite o nome para pesquisa: ");
        String nomePesquisa = stdin.readLineSync()!;
        Pessoa? resultado = pesquisarRegistroPorNome(nomePesquisa);
        if (resultado != null) {
          print("Registro encontrado:");
          print("Nome: ${resultado.nome}");
          print("Endereço: ${resultado.endereco}");
          print("Telefone: ${resultado.telefone}");
        } else {
          print("Registro não encontrado");
        }
        break;
      case 3:
        classificarRegistrosPorNome();
        print("Registros classificados por nome.");
        break;
      case 4:
        apresentarTodosOsRegistros();
        break;
      case 5:
        print("Programa encerrado.");
        break;
      default:
        print("Opção inválida. Tente novamente.");
        break;
    }
  } while (opcao != 5);
}

