// Exercício: Gerenciamento de Carros

// Descrição:
// Desenvolva um programa que gerencie os registros de 30 carros, contendo os campos placa, modelo e ano de fabricação. O programa deve utilizar subprogramas e apresentar um menu para executar as seguintes etapas:

// Passo a Passo:

// 1. Cadastrar os 30 carros:
//    - Solicitar ao usuário que insira a placa, modelo e ano de fabricação de 30 carros.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Classificar os registros por ano de fabricação:
//    - Ordenar os registros dos carros por ano de fabricação.

// 3. Pesquisar um carro pela placa:
//    - Solicitar ao usuário que digite a placa do carro a ser pesquisado.
//    - Utilizar busca sequencial ou binária para encontrar o registro do carro especificado.
//    - Apresentar o resultado da pesquisa.

// 4. Apresentar de forma ordenada os registros dos carros fabricados antes de 2010:
//    - Exibir os registros dos carros fabricados antes de 2010, ordenados por ano de fabricação.

// 5. Apresentar de forma ordenada os registros dos carros fabricados em 2010 ou depois:
//    - Exibir os registros dos carros fabricados em 2010 ou depois, ordenados por ano de fabricação.

// 6. Apresentar de forma ordenada os registros dos carros fabricados no ano de 2010:
//    - Exibir os registros dos carros fabricados no ano de 2010, ordenados por ano de fabricação.

// 7. Sair do programa de gerenciamento de carros.

// Exemplo em Pseudocódigo:
// carro = estrutura {placa, modelo, ano_fabricacao}
// carros[30] = vetor de carro

// PROCEDIMENTO cadastrar_carros(carros)
//     PARA i DE 0 ATÉ 29 FAÇA
//         ESCREVER "Cadastro do Carro", i + 1
//         ESCREVER "Placa do Carro:"
//         LER carros[i].placa
//         ESCREVER "Modelo do Carro:"
//         LER carros[i].modelo
//         ESCREVER "Ano de Fabricação do Carro:"
//         LER carros[i].ano_fabricacao
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO classificar_registros_por_ano(carros)
//     ALGORITMO DE ORDENAÇÃO (por exemplo, Quick Sort) para ordenar carros por ano de fabricação
// FIM PROCEDIMENTO

// FUNÇÃO pesquisar_carro_por_placa(carros, placa)
//     ALGORITMO DE BUSCA (sequencial ou binária) para encontrar carro com placa especificada
// FIM FUNÇÃO

// PROCEDIMENTO apresentar_carros_antes_de_2010(carros)
//     ESCREVER "Carros fabricados antes de 2010:"
//     PARA CADA carro EM carros FAÇA
//         SE carro.ano_fabricacao < 2010 ENTÃO
//             ESCREVER "-", "Placa:", carro.placa, ", Modelo:", carro.modelo, ", Ano de Fabricação:", carro.ano_fabricacao
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_carros_em_ou_apos_2010(carros)
//     ESCREVER "Carros fabricados em 2010 ou depois:"
//     PARA CADA carro EM carros FAÇA
//         SE carro.ano_fabricacao >= 2010 ENTÃO
//             ESCREVER "-", "Placa:", carro.placa, ", Modelo:", carro.modelo, ", Ano de Fabricação:", carro.ano_fabricacao
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_carros_de_2010(carros)
//     ESCREVER "Carros fabricados no ano de 2010:"
//     PARA CADA carro EM carros FAÇA
//         SE carro.ano_fabricacao == 2010 ENTÃO
//             ESCREVER "-", "Placa:", carro.placa, ", Modelo:", carro.modelo, ", Ano de Fabricação:", carro.ano_fabricacao
//         FIM SE
//     FIM PARA
// FIM PROCEDIMENTO

import 'dart:io';

class Carro {
  String placa;
  String modelo;
  int anoFabricacao;

  Carro(this.placa, this.modelo, this.anoFabricacao);
}

void cadastrarCarros(List<Carro> carros) {
  for (int i = 0; i < 30; i++) {
    print("Cadastro do Carro ${i + 1}");
    print("Placa do Carro:");
    String placa = stdin.readLineSync()!;

    print("Modelo do Carro:");
    String modelo = stdin.readLineSync()!;

    print("Ano de Fabricação do Carro:");
    int anoFabricacao = int.parse(stdin.readLineSync()!);

    carros.add(Carro(placa, modelo, anoFabricacao));
  }
}

void classificarRegistrosPorAno(List<Carro> carros) {
  carros.sort((a, b) => a.anoFabricacao.compareTo(b.anoFabricacao));
}

Carro? pesquisarCarroPorPlaca(List<Carro> carros, String placa) {
  for (Carro carro in carros) {
    if (carro.placa == placa) {
      return carro;
    }
  }
  return null;
}

void apresentarCarrosAntesDe2010(List<Carro> carros) {
  print("Carros fabricados antes de 2010:");
  for (Carro carro in carros) {
    if (carro.anoFabricacao < 2010) {
      print("- Placa: ${carro.placa}, Modelo: ${carro.modelo}, Ano de Fabricação: ${carro.anoFabricacao}");
    }
  }
}

void apresentarCarrosEmOuApos2010(List<Carro> carros) {
  print("Carros fabricados em 2010 ou depois:");
  for (Carro carro in carros) {
    if (carro.anoFabricacao >= 2010) {
      print("- Placa: ${carro.placa}, Modelo: ${carro.modelo}, Ano de Fabricação: ${carro.anoFabricacao}");
    }
  }
}

void apresentarCarrosDe2010(List<Carro> carros) {
  print("Carros fabricados no ano de 2010:");
  for (Carro carro in carros) {
    if (carro.anoFabricacao == 2010) {
      print("- Placa: ${carro.placa}, Modelo: ${carro.modelo}, Ano de Fabricação: ${carro.anoFabricacao}");
    }
  }
}

void main() {
  List<Carro> carros = [];

  while (true) {
    print("\nMenu:");
    print("1. Cadastrar Carros");
    print("2. Classificar Registros por Ano de Fabricação");
    print("3. Pesquisar Carro por Placa");
    print("4. Apresentar Carros Fabricados antes de 2010");
    print("5. Apresentar Carros Fabricados em 2010 ou Depois");
    print("6. Apresentar Carros Fabricados no Ano de 2010");
    print("7. Sair");

    print("\nEscolha uma opção:");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarCarros(carros);
        break;
      case 2:
        classificarRegistrosPorAno(carros);
        break;
      case 3:
        print("Digite a placa do carro a ser pesquisado:");
        String placaPesquisa = stdin.readLineSync()!;
        Carro? carroEncontrado = pesquisarCarroPorPlaca(carros, placaPesquisa);
        if (carroEncontrado != null) {
          print("Carro encontrado: Placa: ${carroEncontrado.placa}, Modelo: ${carroEncontrado.modelo}, Ano de Fabricação: ${carroEncontrado.anoFabricacao}");
        } else {
          print("Carro não encontrado.");
        }
        break;
      case 4:
        apresentarCarrosAntesDe2010(carros);
        break;
      case 5:
        apresentarCarrosEmOuApos2010(carros);
        break;
      case 6:
        apresentarCarrosDe2010(carros);
        break;
      case 7:
        print("Saindo do programa de gerenciamento de carros.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}
