// Exercício 115: Gerenciamento de Notas de Alunos

// Descrição:
// Crie um programa de computador que armazene o nome e as notas bimestrais de 20 alunos do curso de Técnicas de Programação que execute as seguintes etapas:

// Passo a Passo:

// 1. Cadastrar os 20 registros (após o cadastro, fazer a classificação por nome):
//    - Solicitar ao usuário que insira o nome e as notas bimestrais de 20 alunos.
//    - Calcular a média de cada aluno.
//    - Armazenar os registros em uma estrutura de dados adequada.
//    - Classificar os registros por nome.

// 2. Pesquisar os 20 registros, um de cada vez, pelo campo nome (usar o método de busca binária; nessa pesquisa, o programa deve também apresentar a média do aluno e as mensagens "Aprovado", caso a média seja maior ou igual a 5, ou "Reprovado" para média abaixo de 5):
//    - Solicitar ao usuário que digite o nome do aluno a ser pesquisado.
//    - Utilizar o método de busca binária para encontrar o registro do aluno especificado.
//    - Calcular a média do aluno e determinar se ele foi aprovado ou reprovado.
//    - Apresentar o registro do aluno encontrado com sua média e situação.

// 3. Apresentar todos os registros e as médias dos alunos aprovados:
//    - Exibir todos os registros dos alunos, mostrando nome, notas bimestrais, média e situação.
//    - Exibir apenas os registros dos alunos aprovados juntamente com suas médias.

// 4. Apresentar apenas os registros e as médias dos alunos aprovados:
//    - Exibir apenas os registros dos alunos aprovados juntamente com suas médias.

// 5. Apresentar apenas os registros e as médias dos alunos reprovados:
//    - Exibir apenas os registros dos alunos reprovados juntamente com suas médias.

// 6. Sair do programa de cadastro.

// Exemplo em Pseudocódigo:
// aluno = estrutura {nome, notas[4], media, situacao}
// alunos[20] = vetor de aluno

// PROCEDIMENTO cadastrar_registros(alunos)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Cadastro do Aluno", i + 1
//         ESCREVER "Nome do Aluno:"
//         LER alunos[i].nome
//         PARA j DE 0 ATÉ 3 FAÇA
//             ESCREVER "Nota do Bimestre", j + 1, ":"
//             LER alunos[i].notas[j]
//         FIM PARA
//         alunos[i].media = calcular_media(alunos[i].notas)
//         alunos[i].situacao = determinar_situacao(alunos[i].media)
//     FIM PARA
//     classificar_por_nome(alunos)
// FIM PROCEDIMENTO

// FUNÇÃO calcular_media(notas)
//     soma = 0
//     PARA i DE 0 ATÉ 3 FAÇA
//         soma = soma + notas[i]
//     FIM PARA
//     RETORNAR soma / 4
// FIM FUNÇÃO

// FUNÇÃO determinar_situacao(media)
//     SE media >= 5 ENTÃO
//         RETORNAR "Aprovado"
//     SENÃO
//         RETORNAR "Reprovado"
//     FIM SE
// FIM FUNÇÃO

// PROCEDIMENTO pesquisar_registro_por_nome(alunos, nome)
//     ALGORITMO DE BUSCA BINÁRIA para encontrar aluno com nome especificado
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_todos_os_registros(alunos)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Registro do Aluno", i + 1, ":"
//         ESCREVER "Nome:", alunos[i].nome
//         ESCREVER "Notas:", alunos[i].notas
//         ESCREVER "Média:", alunos[i].media
//         ESCREVER "Situação:", alunos[i].situacao
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_registros_aprovados(alunos)
//     PARA CADA aluno EM alunos FAÇA
//         SE aluno.situacao == "Aprovado" ENTÃO
//             ESCREVER "Registro do Aluno:", aluno.nome
//             ESCREVER "Média:", aluno.media
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_registros_reprovados(alunos)
//     PARA CADA aluno EM alunos FAÇA
//         SE aluno.situacao == "Reprovado" ENTÃO
//             ESCREVER "Registro do Aluno:", aluno.nome
//             ESCREVER "Média:", aluno.media
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

import 'dart:io';

class Aluno {
  String nome;
  List<double> notas = List.filled(4, 0);
  double media = 0; // Inicializado com 0 por padrão
  String situacao = ''; // Inicializado com uma string vazia por padrão

  Aluno(this.nome);

  // Método para calcular a média das notas
  void calcularMedia() {
    media = notas.reduce((a, b) => a + b) / notas.length;
  }

  // Método para determinar a situação do aluno
  void determinarSituacao() {
    situacao = (media >= 5) ? "Aprovado" : "Reprovado";
  }
}

void main() {
  List<Aluno> alunos = List.filled(20, Aluno(''));

  // Procedimento para cadastrar registros
  void cadastrarRegistros() {
    for (int i = 0; i < 20; i++) {
      print("Cadastro do Aluno ${i + 1}");
      stdout.write("Nome do Aluno: ");
      alunos[i].nome = stdin.readLineSync()!;
      for (int j = 0; j < 4; j++) {
        stdout.write("Nota do Bimestre ${j + 1}: ");
        alunos[i].notas[j] = double.parse(stdin.readLineSync()!);
      }
      alunos[i].calcularMedia();
      alunos[i].determinarSituacao();
    }

    // Classificação por nome (Bubble Sort)
    for (int i = 0; i < 19; i++) {
      for (int j = 0; j < 19 - i; j++) {
        if (alunos[j].nome.compareTo(alunos[j + 1].nome) > 0) {
          Aluno temp = alunos[j];
          alunos[j] = alunos[j + 1];
          alunos[j + 1] = temp;
        }
      }
    }
  }

  // Função para pesquisar registro por nome (Busca Binária)
  void pesquisarRegistroPorNome(String nome) {
    int inicio = 0;
    int fim = alunos.length - 1;
    int meio;

    while (inicio <= fim) {
      meio = (inicio + fim) ~/ 2;
      if (alunos[meio].nome == nome) {
        print("Registro encontrado:");
        print("Nome: ${alunos[meio].nome}");
        print("Notas: ${alunos[meio].notas}");
        print("Média: ${alunos[meio].media}");
        print("Situação: ${alunos[meio].situacao}");
        return;
      } else if (alunos[meio].nome.compareTo(nome) < 0) {
        inicio = meio + 1;
      } else {
        fim = meio - 1;
      }
    }

    print("Registro não encontrado.");
  }

  // Procedimento para apresentar todos os registros e médias dos alunos aprovados
  void apresentarTodosOsRegistros() {
    for (int i = 0; i < 20; i++) {
      print("Registro do Aluno ${i + 1}:");
      print("Nome: ${alunos[i].nome}");
      print("Notas: ${alunos[i].notas}");
      print("Média: ${alunos[i].media}");
      print("Situação: ${alunos[i].situacao}");
    }
  }

  // Procedimento para apresentar registros aprovados
  void apresentarRegistrosAprovados() {
    for (int i = 0; i < 20; i++) {
      if (alunos[i].situacao == "Aprovado") {
        print("Registro do Aluno ${i + 1}:");
        print("Nome: ${alunos[i].nome}");
        print("Média: ${alunos[i].media}");
      }
    }
  }

  // Procedimento para apresentar registros reprovados
  void apresentarRegistrosReprovados() {
    for (int i = 0; i < 20; i++) {
      if (alunos[i].situacao == "Reprovado") {
        print("Registro do Aluno ${i + 1}:");
        print("Nome: ${alunos[i].nome}");
        print("Média: ${alunos[i].media}");
      }
    }
  }

  int opcao;
  do {
    print("\nMenu:");
    print("1. Cadastrar Registros");
    print("2. Pesquisar Registro por Nome");
    print("3. Apresentar Todos os Registros");
    print("4. Apresentar Registros Aprovados");
    print("5. Apresentar Registros Reprovados");
    print("6. Sair");

    stdout.write("Escolha uma opção (1-6): ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarRegistros();
        break;
      case 2:
        stdout.write("Digite o nome para pesquisa: ");
        String nomePesquisa = stdin.readLineSync()!;
        pesquisarRegistroPorNome(nomePesquisa);
        break;
      case 3:
        apresentarTodosOsRegistros();
        break;
      case 4:
        apresentarRegistrosAprovados();
        break;
      case 5:
        apresentarRegistrosReprovados();
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
