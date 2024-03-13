// Exercício 113: Gerenciamento de Funcionários

// Descrição:
// Elaborar um programa que gerencie os registros de 20 funcionários, contendo os campos matrícula, nome e salário. O programa deve, por meio de um menu, executar as seguintes etapas.

// Passo a Passo:

// 1. Cadastrar os 20 empregados:
//    - Solicitar ao usuário que insira a matrícula, nome e salário de 20 funcionários.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Classificar os registros por número de matrícula:
//    - Ordenar os registros dos funcionários por número de matrícula.

// 3. Pesquisar um determinado empregado pelo número de matrícula (método binário):
//    - Solicitar ao usuário que digite o número de matrícula a ser pesquisado.
//    - Utilizar o método de busca binária para encontrar o empregado com o número de matrícula especificado.
//    - Apresentar o registro do empregado encontrado.

// 4. Apresentar de forma ordenada os registros dos empregados que recebem salários acima de R$ 1.000,00:
//    - Percorrer os registros dos funcionários e exibir os registros daqueles que recebem salários acima de R$ 1.000,00, ordenados.

// 5. Apresentar de forma ordenada os registros dos empregados que recebem salários iguais a R$ 1.000,00:
//    - Percorrer os registros dos funcionários e exibir os registros daqueles que recebem salários iguais a R$ 1.000,00, ordenados.

// 6. Apresentar de forma ordenada os registros dos empregados que recebem salários abaixo de R$ 1.000,00:
//    - Percorrer os registros dos funcionários e exibir os registros daqueles que recebem salários abaixo de R$ 1.000,00, ordenados.

// 7. Sair do programa.

// Exemplo em Pseudocódigo:
// funcionario = estrutura {matricula, nome, salario}
// funcionarios[20] = vetor de funcionarios
// 
// PROCEDIMENTO cadastrar_funcionarios(funcionarios)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Cadastro do funcionário", i + 1
//         ESCREVER "Matrícula do funcionário:"
//         LER funcionarios[i].matricula
//         ESCREVER "Nome do funcionário:"
//         LER funcionarios[i].nome
//         ESCREVER "Salário do funcionário:"
//         LER funcionarios[i].salario
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO classificar_por_matricula(funcionarios)
//     ALGORITMO DE ORDENAÇÃO (por exemplo, Bubble Sort) para ordenar funcionarios por matricula
// FIM PROCEDIMENTO
// 
// FUNÇÃO pesquisar_por_matricula(funcionarios, matricula)
//     ALGORITMO DE BUSCA BINÁRIA para encontrar funcionario com matricula especificada
//     RETORNAR funcionario encontrado ou mensagem de erro se não encontrado
// FIM FUNÇÃO
// 
// PROCEDIMENTO apresentar_salarios_acima_1000(funcionarios)
//     PARA CADA funcionario EM funcionarios FAÇA
//         SE funcionario.salario > 1000 ENTÃO
//             ESCREVER funcionario.nome, ":", funcionario.salario
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO apresentar_salarios_igual_1000(funcionarios)
//     PARA CADA funcionario EM funcionarios FAÇA
//         SE funcionario.salario == 1000 ENTÃO
//             ESCREVER funcionario.nome, ":", funcionario.salario
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO
// 
// PROCEDIMENTO apresentar_salarios_abaixo_1000(funcionarios)
//     PARA CADA funcionario EM funcionarios FAÇA
//         SE funcionario.salario < 1000 ENTÃO
//             ESCREVER funcionario.nome, ":", funcionario.salario
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO
import 'dart:io';

class Funcionario {
  late int matricula;
  late String nome;
  late double salario;

  Funcionario(this.matricula, this.nome, this.salario);
}

void main() {
  List<Funcionario> funcionarios = List.filled(20, Funcionario(0, '', 0.0));

  while (true) {
    print("\n=== MENU ===");
    print("1. Cadastrar Funcionários");
    print("2. Classificar por Matrícula");
    print("3. Pesquisar Funcionário por Matrícula");
    print("4. Funcionários com Salário Acima de R\$ 1.000,00");
    print("5. Funcionários com Salário Igual a R\$ 1.000,00");
    print("6. Funcionários com Salário Abaixo de R\$ 1.000,00");
    print("7. Sair");

    stdout.write("Escolha uma opção: ");
    var opcao = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcao) {
      case 1:
        cadastrarFuncionarios(funcionarios);
        break;
      case 2:
        classificarPorMatricula(funcionarios);
        break;
      case 3:
        pesquisarPorMatricula(funcionarios);
        break;
      case 4:
        apresentarSalariosAcimaDe1000(funcionarios);
        break;
      case 5:
        apresentarSalariosIgualA1000(funcionarios);
        break;
      case 6:
        apresentarSalariosAbaixoDe1000(funcionarios);
        break;
      case 7:
        print("Programa encerrado.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

void cadastrarFuncionarios(List<Funcionario> funcionarios) {
  funcionarios[0] = Funcionario(101, 'Alice', 1500.0);
  funcionarios[1] = Funcionario(102, 'Bob', 1200.0);
  funcionarios[2] = Funcionario(103, 'Carol', 900.0);
  funcionarios[3] = Funcionario(104, 'David', 1100.0);
  funcionarios[4] = Funcionario(105, 'Eve', 1300.0);
  funcionarios[5] = Funcionario(106, 'Frank', 1000.0);
  funcionarios[6] = Funcionario(107, 'Grace', 1400.0);
  funcionarios[7] = Funcionario(108, 'Helen', 950.0);
  funcionarios[8] = Funcionario(109, 'Ivy', 1050.0);
  funcionarios[9] = Funcionario(110, 'Jack', 1150.0);
  funcionarios[10] = Funcionario(111, 'Kate', 1250.0);
  funcionarios[11] = Funcionario(112, 'Liam', 1350.0);
  funcionarios[12] = Funcionario(113, 'Mia', 950.0);
  funcionarios[13] = Funcionario(114, 'Nathan', 1000.0);
  funcionarios[14] = Funcionario(115, 'Olivia', 1100.0);
  funcionarios[15] = Funcionario(116, 'Peter', 1300.0);
  funcionarios[16] = Funcionario(117, 'Quinn', 1500.0);
  funcionarios[17] = Funcionario(118, 'Rachel', 950.0);
  funcionarios[18] = Funcionario(119, 'Sam', 1050.0);
  funcionarios[19] = Funcionario(120, 'Tom', 1150.0);
}

void classificarPorMatricula(List<Funcionario> funcionarios) {
  funcionarios.sort((a, b) => a.matricula.compareTo(b.matricula));
  print("\nFuncionários ordenados por matrícula:");
  for (var funcionario in funcionarios) {
    print("- Matrícula: ${funcionario.matricula}, Nome: ${funcionario.nome}, Salário: ${funcionario.salario}");
  }
}

void pesquisarPorMatricula(List<Funcionario> funcionarios) {
  stdout.write("\nDigite o número de matrícula a ser pesquisado: ");
  var matriculaPesquisa = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  int inicio = 0;
  int fim = funcionarios.length - 1;
  bool encontrado = false;

  while (inicio <= fim) {
    int meio = (inicio + fim) ~/ 2;
    if (funcionarios[meio].matricula == matriculaPesquisa) {
      print("\nFuncionário encontrado:");
      print("- Matrícula: ${funcionarios[meio].matricula}, Nome: ${funcionarios[meio].nome}, Salário: ${funcionarios[meio].salario}");
      encontrado = true;
      break;
    } else if (funcionarios[meio].matricula < matriculaPesquisa) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }

  if (!encontrado) {
    print("\nFuncionário não encontrado.");
  }
}

void apresentarSalariosAcimaDe1000(List<Funcionario> funcionarios) {
  print("\nFuncionários com salário acima de R\$ 1.000,00:");
  for (var funcionario in funcionarios) {
    if (funcionario.salario > 1000) {
      print("- Nome: ${funcionario.nome}, Salário: ${funcionario.salario}");
    }
  }
}

void apresentarSalariosIgualA1000(List<Funcionario> funcionarios) {
  print("\nFuncionários com salário igual a R\$ 1.000,00:");
  for (var funcionario in funcionarios) {
    if (funcionario.salario == 1000) {
      print("- Nome: ${funcionario.nome}, Salário: ${funcionario.salario}");
    }
  }
}

void apresentarSalariosAbaixoDe1000(List<Funcionario> funcionarios) {
  print("\nFuncionários com salário abaixo de R\$ 1.000,00:");
  for (var funcionario in funcionarios) {
    if (funcionario.salario < 1000) {
      print("- Nome: ${funcionario.nome}, Salário: ${funcionario.salario}");
    }
  }
}
