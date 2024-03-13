// Exercício 117: Gerenciamento de Funcionários

// Descrição:
// Considerando os registros de 20 funcionários, com os campos matrícula, nome e salário, desenvolver um programa que utilize subprogramas e apresente um menu para a execução das seguintes etapas:

// Passo a Passo:

// 1. Cadastrar os 20 empregados:
//    - Solicitar ao usuário que insira a matrícula, nome e salário de 20 funcionários.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Classificar os registros por número de matrícula:
//    - Ordenar os registros dos funcionários por número de matrícula.

// 3. Pesquisar um determinado empregado pelo número de matrícula:
//    - Solicitar ao usuário que digite o número de matrícula do empregado a ser pesquisado.
//    - Utilizar busca sequencial ou binária para encontrar o registro do empregado especificado.
//    - Apresentar o resultado da pesquisa.

// 4. Apresentar de forma ordenada os registros dos empregados que recebem salários acima de R$ 1.000:
//    - Exibir os registros dos funcionários cujo salário seja superior a R$ 1.000, ordenados por nome.

// 5. Apresentar de forma ordenada os registros dos empregados que recebem salários abaixo de R$ 1.000:
//    - Exibir os registros dos funcionários cujo salário seja inferior a R$ 1.000, ordenados por nome.

// 6. Apresentar de forma ordenada os registros dos empregados que recebem salários iguais a R$ 1.000:
//    - Exibir os registros dos funcionários cujo salário seja igual a R$ 1.000, ordenados por nome.

// 7. Sair do programa de cadastro.

// Exemplo em Pseudocódigo:
// funcionario = estrutura {matricula, nome, salario}
// funcionarios[20] = vetor de funcionario

// PROCEDIMENTO cadastrar_empregados(funcionarios)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Cadastro do Funcionário", i + 1
//         ESCREVER "Matrícula do Funcionário:"
//         LER funcionarios[i].matricula
//         ESCREVER "Nome do Funcionário:"
//         LER funcionarios[i].nome
//         ESCREVER "Salário do Funcionário:"
//         LER funcionarios[i].salario
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO classificar_registros_por_matricula(funcionarios)
//     ALGORITMO DE ORDENAÇÃO (por exemplo, Quick Sort) para ordenar funcionarios por matrícula
// FIM PROCEDIMENTO

// FUNÇÃO pesquisar_empregado_por_matricula(funcionarios, matricula)
//     ALGORITMO DE BUSCA (sequencial ou binária) para encontrar empregado com matrícula especificada
// FIM FUNÇÃO

// PROCEDIMENTO apresentar_empregados_acima_de_mil(funcionarios)
//     ESCREVER "Empregados com salários acima de R$ 1.000,00:"
//     PARA CADA funcionario EM funcionarios FAÇA
//         SE funcionario.salario > 1000 ENTÃO
//             ESCREVER "-", funcionario.nome, ": R$", funcionario.salario
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_empregados_abaixo_de_mil(funcionarios)
//     ESCREVER "Empregados com salários abaixo de R$ 1.000,00:"
//     PARA CADA funcionario EM funcionarios FAÇA
//         SE funcionario.salario < 1000 ENTÃO
//             ESCREVER "-", funcionario.nome, ": R$", funcionario.salario
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_empregados_iguais_a_mil(funcionarios)
//     ESCREVER "Empregados com salários iguais a R$ 1.000,00:"
//     PARA CADA funcionario EM funcionarios FAÇA
//         SE funcionario.salario == 1000 ENTÃO
//             ESCREVER "-", funcionario.nome, ": R$", funcionario.salario
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

import 'dart:io';

class Funcionario {
  int matricula;
  String nome;
  double salario;

  Funcionario(this.matricula, this.nome, this.salario);
}

void main() {
  List<Funcionario> funcionarios = List.generate(20, (index) => Funcionario(0, '', 0.0));

  // Procedimento para cadastrar empregados
  void cadastrarEmpregados() {
    for (int i = 0; i < 20; i++) {
      print("Cadastro do Funcionário ${i + 1}");
      stdout.write("Matrícula do Funcionário: ");
      funcionarios[i].matricula = int.parse(stdin.readLineSync()!);
      stdout.write("Nome do Funcionário: ");
      funcionarios[i].nome = stdin.readLineSync()!;
      stdout.write("Salário do Funcionário: ");
      funcionarios[i].salario = double.parse(stdin.readLineSync()!);
    }
  }

  // Procedimento para classificar registros por matrícula
  void classificarRegistrosPorMatricula() {
    funcionarios.sort((a, b) => a.matricula.compareTo(b.matricula));
  }

  // Função para pesquisar empregado por matrícula
  Funcionario? pesquisarEmpregadoPorMatricula(int matricula) {
    for (Funcionario funcionario in funcionarios) {
      if (funcionario.matricula == matricula) {
        return funcionario;
      }
    }
    return null;
  }

  // Procedimento para apresentar empregados acima de R$ 1.000
  void apresentarEmpregadosAcimaDeMil() {
    print("Empregados com salários acima de R\$ 1.000,00:");
    for (Funcionario funcionario in funcionarios) {
      if (funcionario.salario > 1000) {
        print("- ${funcionario.nome}: R\$ ${funcionario.salario}");
      }
    }
  }

  // Procedimento para apresentar empregados abaixo de R$ 1.000
  void apresentarEmpregadosAbaixoDeMil() {
    print("Empregados com salários abaixo de R\$ 1.000,00:");
    for (Funcionario funcionario in funcionarios) {
      if (funcionario.salario < 1000) {
        print("- ${funcionario.nome}: R\$ ${funcionario.salario}");
      }
    }
  }

  // Procedimento para apresentar empregados iguais a R$ 1.000
  void apresentarEmpregadosIguaisAMil() {
    print("Empregados com salários iguais a R\$ 1.000,00:");
    for (Funcionario funcionario in funcionarios) {
      if (funcionario.salario == 1000) {
        print("- ${funcionario.nome}: R\$ ${funcionario.salario}");
      }
    }
  }

  int opcao;
  do {
    print("\nMenu:");
    print("1. Cadastrar Empregados");
    print("2. Classificar Registros por Matrícula");
    print("3. Pesquisar Empregado por Matrícula");
    print("4. Apresentar Empregados Acima de R\$ 1.000,00");
    print("5. Apresentar Empregados Abaixo de R\$ 1.000,00");
    print("6. Apresentar Empregados Iguais a R\$ 1.000,00");
    print("7. Sair");

    stdout.write("Escolha uma opção (1-7): ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarEmpregados();
        break;
      case 2:
        classificarRegistrosPorMatricula();
        break;
      case 3:
        stdout.write("Digite a Matrícula do Empregado: ");
        int matricula = int.parse(stdin.readLineSync()!);
        Funcionario? empregado = pesquisarEmpregadoPorMatricula(matricula);
        if (empregado != null) {
          print("Empregado encontrado: ${empregado.nome}, Salário: R\$ ${empregado.salario}");
        } else {
          print("Empregado não encontrado.");
        }
        break;
      case 4:
        apresentarEmpregadosAcimaDeMil();
        break;
      case 5:
        apresentarEmpregadosAbaixoDeMil();
        break;
      case 6:
        apresentarEmpregadosIguaisAMil();
        break;
      case 7:
        print("Programa encerrado.");
        break;
      default:
        print("Opção inválida. Tente novamente.");
        break;
    }
  } while (opcao != 7);
}
