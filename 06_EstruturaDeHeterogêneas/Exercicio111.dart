// Exercício 111: Sistema de Notas Escolares

// Descrição:
// Elaborar um programa escolar que armazene o nome e as notas bimestrais de 20 alunos de um determinado curso. O programa deverá realizar as seguintes operações.

// Passo a Passo:

// 1. Cadastrar os 20 registros (após o registro ordenar os registros pelo nome)
//    - Solicitar ao usuário que insira o nome e as notas bimestrais de 20 alunos.
//    - Calcular a média de cada aluno.
//    - Ordenar os registros pelo nome dos alunos.

// 2. Pesquisar os 20 registros, de cada vez, pelo campo nome, o programa deve também apresentar a média do aluno e as mensagens: "Aprovado", caso sua média seja maior ou igual a 5, ou "Reprovado" para média abaixo de 5.
//    - Solicitar ao usuário que digite o nome do aluno a ser pesquisado.
//    - Buscar o aluno pelo nome e apresentar suas notas, média e situação (aprovado ou reprovado).

// 3. Apresentar todos os registros, médias e a mensagem de aprovação ou reprovação.
//    - Exibir todos os registros, suas médias e situações (aprovado ou reprovado).

// 4. Sair do programa cadastrado.

// Exemplo de cadastro:
// Registro 1:
// Nome: João
// Notas: [7.5, 8.0, 6.5, 9.0]
// Média: 7.5
// Situação: Aprovado

// Registro 2:
// Nome: Maria
// Notas: [6.0, 5.5, 4.0, 6.5]
// Média: 5.5
// Situação: Reprovado

// ...

// Registro 20:
// Nome: Pedro
// Notas: [8.0, 7.5, 8.5, 7.0]
// Média: 7.75
// Situação: Aprovado

// Exemplo em Pseudocódigo:
// aluno = estrutura {nome, notas[4], media, situacao}
// alunos[20] = vetor de alunos
// 
// PROCEDIMENTO cadastrar_alunos(alunos)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Cadastro do aluno", i + 1
//         ESCREVER "Nome do aluno:"
//         LER alunos[i].nome
//         ESCREVER "Notas do aluno (4 notas separadas por espaço):"
//         PARA j DE 0 ATÉ 3 FAÇA
//             LER alunos[i].notas[j]
//         FIM PARA
//         alunos[i].media = calcular_media(alunos[i].notas)
//         alunos[i].situacao = determinar_situacao(alunos[i].media)
//     FIM PARA
//     ordenar_por_nome(alunos)
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO pesquisar_aluno(alunos)
//     ESCREVER "Digite o nome do aluno a ser pesquisado:"
//     LER nome_pesquisa
//     PARA i DE 0 ATÉ 19 FAÇA
//         SE alunos[i].nome == nome_pesquisa ENTÃO
//             ESCREVER "Nome:", alunos[i].nome
//             ESCREVER "Notas:", alunos[i].notas
//             ESCREVER "Média:", alunos[i].media
//             ESCREVER "Situação:", alunos[i].situacao
//             RETORNAR
//         FIM SE
//     FIM PARA
//     ESCREVER "Aluno não encontrado."
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO apresentar_todos_alunos(alunos)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Registro", i + 1, ":"
//         ESCREVER "Nome:", alunos[i].nome
//         ESCREVER "Notas:", alunos[i].notas
//         ESCREVER "Média:", alunos[i].media
//         ESCREVER "Situação:", alunos[i].situacao
//     FIM PARA
// FIM PROCEDIMENTO
// 
// FUNÇÃO calcular_media(notas)
//     soma = 0
//     PARA i DE 0 ATÉ 3 FAÇA
//         soma = soma + notas[i]
//     FIM PARA
//     RETORNAR soma / 4
// FIM FUNÇÃO
// 
// FUNÇÃO determinar_situacao(media)
//     SE media >= 5 ENTÃO
//         RETORNAR "Aprovado"
//     SENÃO
//         RETORNAR "Reprovado"
//     FIM SE
// FIM FUNÇÃO
// 
// PROCEDIMENTO ordenar_por_nome(alunos)
//     PARA i DE 0 ATÉ 18 FAÇA
//         PARA j DE i + 1 ATÉ 19 FAÇA
//             SE alunos[i].nome > alunos[j].nome ENTÃO
//                 temp = alunos[i]
//                 alunos[i] = alunos[j]
//                 alunos[j] = temp
//             FIM SE
//         FIM PARA
//     FIM PARA
// FIM PROCEDIMENTO

import 'dart:io';

void main() {
  List<String> nomes = List.filled(20, '');
  List<List<double>> notas = List.generate(20, (_) => List.filled(4, 0.0));

  while (true) {
    print("\n=== MENU ===");
    print("1. Cadastro de Alunos e Notas");
    print("2. Consulta de Notas de um Aluno");
    print("3. Média das Notas de um Aluno");
    print("4. Aluno com Maior Média");
    print("5. Sair");

    stdout.write("Escolha uma opção: ");
    var opcao = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcao) {
      case 1:
        cadastrarAlunos(nomes, notas);
        break;
      case 2:
        consultarNotas(nomes, notas);
        break;
      case 3:
        calcularMedia(nomes, notas);
        break;
      case 4:
        encontrarMaiorMedia(nomes, notas);
        break;
      case 5:
        print("Programa encerrado.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

void cadastrarAlunos(List<String> nomes, List<List<double>> notas) {
  for (int i = 0; i < 20; i++) {
    print("\nCadastro do aluno ${i + 1}:");
    stdout.write("Nome: ");
    nomes[i] = stdin.readLineSync() ?? '';
    for (int j = 0; j < 4; j++) {
      stdout.write("Nota do ${j + 1}º bimestre: ");
      notas[i][j] = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
    }
  }
}

void consultarNotas(List<String> nomes, List<List<double>> notas) {
  stdout.write("Digite o nome do aluno: ");
  var nomeConsulta = stdin.readLineSync() ?? '';
  var indexAluno = nomes.indexOf(nomeConsulta);
  if (indexAluno != -1) {
    print("Notas de $nomeConsulta:");
    for (int i = 0; i < 4; i++) {
      print("Bimestre ${i + 1}: ${notas[indexAluno][i]}");
    }
  } else {
    print("Aluno não encontrado.");
  }
}

void calcularMedia(List<String> nomes, List<List<double>> notas) {
  stdout.write("Digite o nome do aluno: ");
  var nomeConsulta = stdin.readLineSync() ?? '';
  var indexAluno = nomes.indexOf(nomeConsulta);
  if (indexAluno != -1) {
    var media = notas[indexAluno].reduce((a, b) => a + b) / 4;
    print("Média de $nomeConsulta: $media");
  } else {
    print("Aluno não encontrado.");
  }
}

void encontrarMaiorMedia(List<String> nomes, List<List<double>> notas) {
  var maiorMedia = 0.0;
  var nomeMaiorMedia = '';

  for (int i = 0; i < 20; i++) {
    var media = notas[i].reduce((a, b) => a + b) / 4;
    if (media > maiorMedia) {
      maiorMedia = media;
      nomeMaiorMedia = nomes[i];
    }
  }

  print("Aluno com maior média: $nomeMaiorMedia (Média: $maiorMedia)");
}
