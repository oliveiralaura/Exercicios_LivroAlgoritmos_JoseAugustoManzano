// ### Sistema de Petshop

// Desenvolva um programa que gerencie os registros dos pets atendidos em um petshop, contendo os campos nome, espécie, idade e serviços realizados. Cada serviço terá um nome, valor e data. O programa deve utilizar subprogramas e apresentar um menu para executar as seguintes etapas:

// a. Cadastrar os pets atendidos.
// b. Classificar os registros por nome do pet.
// c. Pesquisar um pet pelo nome.
// d. Apresentar de forma ordenada os registros dos pets por espécie.
// e. Apresentar de forma ordenada os registros dos pets com idade acima de 5 anos.
// f. Apresentar de forma ordenada os registros dos pets com idade igual ou abaixo de 5 anos.
// g. Registrar um novo serviço para um pet.
// h. Apresentar os serviços realizados em um pet específico.
// i. Apresentar o total de serviços realizados em uma data específica.
// j. Sair do sistema de gerenciamento de petshop.

// **Exemplo de cadastro:**
// Pet 1:
// Nome: Bob
// Espécie: Cachorro
// Idade: 3 anos
// Serviços:
// - Banho e Tosa (R$ 50.00) - 2024-03-01
// - Consulta Veterinária (R$ 80.00) - 2024-03-10

// Pet 2:
// Nome: Mia
// Espécie: Gato
// Idade: 6 anos
// Serviços:
// - Consulta Veterinária (R$ 80.00) - 2024-02-15
// - Vacinação (R$ 100.00) - 2024-03-05

// ...

// Pet 25:
// Nome: Max
// Espécie: Papagaio
// Idade: 8 anos
// Serviços:
// - Corte de Unhas (R$ 30.00) - 2024-02-20

// **Exemplo de pesquisa (opção c):**
// Digite o nome do pet para pesquisa: Bob
// Resultado da pesquisa:
// Pet: Bob
// Espécie: Cachorro
// Idade: 3 anos
// Serviços:
// - Banho e Tosa (R$ 50.00) - 2024-03-01
// - Consulta Veterinária (R$ 80.00) - 2024-03-10

// **Exemplo de registro de serviço (opção g):**
// Digite o nome do pet: Bob
// Digite o nome do serviço: Vacinação
// Digite o valor do serviço: 100.00
// Digite a data do serviço (AAAA-MM-DD): 2024-03-15
// Serviço registrado com sucesso para o pet Bob.

// **Exemplo de apresentação de serviços (opção h):**
// Digite o nome do pet para ver os serviços realizados: Mia
// Serviços realizados para o pet Mia:
// - Consulta Veterinária (R$ 80.00) - 2024-02-15
// - Vacinação (R$ 100.00) - 2024-03-05

// **Exemplo de apresentação do total de serviços em uma data (opção i):**
// Digite a data para ver o total de serviços realizados (AAAA-MM-DD): 2024-03-01
// Total de serviços realizados em 2024-03-01: R$ 150.00

// **Exemplo de apresentação (opção d):**
// Pets ordenados por espécie:
// - Nome: Mia, Espécie: Gato, Idade: 6 anos, Serviços: ...
// - Nome: Bob, Espécie: Cachorro, Idade: 3 anos, Serviços: ...
// ...

// **Exemplo de apresentação (opção e):**
// Pets com idade acima de 5 anos:
// - Nome: Mia, Espécie: Gato, Idade: 6 anos, Serviços: ...
// - Nome: Max, Espécie: Papagaio, Idade: 8 anos, Serviços: ...
// ...

// **Exemplo de apresentação (opção f):**
// Pets com idade igual ou abaixo de 5 anos:
// - Nome: Bob, Espécie: Cachorro, Idade: 3 anos, Serviços: ...
// - Nome: Luna, Espécie: Coelho, Idade: 1 ano, Serviços: ...
// ...

import 'dart:io';

class Servico {
  String nome;
  double valor;
  String data;

  Servico(this.nome, this.valor, this.data);
}

class Pet {
  String nome;
  String especie;
  int idade;
  List<Servico> servicos;

  Pet(this.nome, this.especie, this.idade) : servicos = [];

  void adicionarServico(String nome, double valor, String data) {
    servicos.add(Servico(nome, valor, data));
  }

  double calcularTotalServicosEmData(String data) {
    double total = 0;
    for (Servico servico in servicos) {
      if (servico.data == data) {
        total += servico.valor;
      }
    }
    return total;
  }
}

void cadastrarPets(List<Pet> pets) {
  for (int i = 0; i < 30; i++) {
    print("Cadastro do Pet ${i + 1}");
    print("Nome do Pet:");
    String nome = stdin.readLineSync()!;

    print("Espécie do Pet:");
    String especie = stdin.readLineSync()!;

    print("Idade do Pet:");
    int idade = int.parse(stdin.readLineSync()!);

    Pet pet = Pet(nome, especie, idade);
    pets.add(pet);
  }
}

void classificarRegistrosPorNome(List<Pet> pets) {
  pets.sort((a, b) => a.nome.compareTo(b.nome));
}

Pet? pesquisarPetPorNome(List<Pet> pets, String nome) {
  for (Pet pet in pets) {
    if (pet.nome == nome) {
      return pet;
    }
  }
  return null;
}

void apresentarPetsPorEspecie(List<Pet> pets) {
  print("Pets ordenados por espécie:");
  pets.sort((a, b) => a.especie.compareTo(b.especie));
  for (Pet pet in pets) {
    print("- Nome: ${pet.nome}, Espécie: ${pet.especie}, Idade: ${pet.idade}, Serviços: ${pet.servicos}");
  }
}

void apresentarPetsAcimaDe5Anos(List<Pet> pets) {
  print("Pets com idade acima de 5 anos:");
  for (Pet pet in pets) {
    if (pet.idade > 5) {
      print("- Nome: ${pet.nome}, Espécie: ${pet.especie}, Idade: ${pet.idade}, Serviços: ${pet.servicos}");
    }
  }
}

void apresentarPetsIgualOuAbaixoDe5Anos(List<Pet> pets) {
  print("Pets com idade igual ou abaixo de 5 anos:");
  for (Pet pet in pets) {
    if (pet.idade <= 5) {
      print("- Nome: ${pet.nome}, Espécie: ${pet.especie}, Idade: ${pet.idade}, Serviços: ${pet.servicos}");
    }
  }
}

void registrarServicoParaPet(List<Pet> pets, String nomePet, String nomeServico, double valorServico, String dataServico) {
  Pet? pet = pesquisarPetPorNome(pets, nomePet);
  if (pet != null) {
    pet.adicionarServico(nomeServico, valorServico, dataServico);
    print("Serviço registrado com sucesso para o pet $nomePet.");
  } else {
    print("Pet não encontrado.");
  }
}

void apresentarServicosDePet(List<Pet> pets, String nomePet) {
  Pet? pet = pesquisarPetPorNome(pets, nomePet);
  if (pet != null) {
    print("Serviços realizados para o pet $nomePet:");
    for (Servico servico in pet.servicos) {
      print("- ${servico.nome} (R\$ ${servico.valor}) - ${servico.data}");
    }
  } else {
    print("Pet não encontrado.");
  }
}

void apresentarTotalServicosEmData(List<Pet> pets, String data) {
  double total = 0;
  for (Pet pet in pets) {
    total += pet.calcularTotalServicosEmData(data);
  }
  print("Total de serviços realizados em $data: R\$ $total");
}

void main() {
  List<Pet> pets = [];

  while (true) {
    print("\nMenu:");
    print("a. Cadastrar Pets");
    print("b. Classificar Registros por Nome");
    print("c. Pesquisar Pet por Nome");
    print("d. Apresentar Pets por Espécie");
    print("e. Apresentar Pets com Idade Acima de 5 Anos");
    print("f. Apresentar Pets com Idade Igual ou Abaixo de 5 Anos");
    print("g. Registrar Novo Serviço para um Pet");
    print("h. Apresentar Serviços Realizados em um Pet");
    print("i. Apresentar Total de Serviços Realizados em uma Data");
    print("j. Sair");

    print("\nEscolha uma opção:");
    String opcao = stdin.readLineSync()!;

    switch (opcao) {
      case 'a':
        cadastrarPets(pets);
        break;
      case 'b':
        classificarRegistrosPorNome(pets);
        break;
      case 'c':
        print("Digite o nome do pet para pesquisa:");
        String nomePesquisa = stdin.readLineSync()!;
        Pet? petEncontrado = pesquisarPetPorNome(pets, nomePesquisa);
        if (petEncontrado != null) {
          print("Resultado da pesquisa:");
          print("- Nome: ${petEncontrado.nome}, Espécie: ${petEncontrado.especie}, Idade: ${petEncontrado.idade}, Serviços: ${petEncontrado.servicos}");
        } else {
          print("Pet não encontrado.");
        }
        break;
      case 'd':
        apresentarPetsPorEspecie(pets);
        break;
      case 'e':
        apresentarPetsAcimaDe5Anos(pets);
        break;
      case 'f':
        apresentarPetsIgualOuAbaixoDe5Anos(pets);
        break;
      case 'g':
        print("Digite o nome do pet:");
        String nomePet = stdin.readLineSync()!;
        print("Digite o nome do serviço:");
        String nomeServico = stdin.readLineSync()!;
        print("Digite o valor do serviço:");
        double valorServico = double.parse(stdin.readLineSync()!);
        print("Digite a data do serviço (AAAA-MM-DD):");
        String dataServico = stdin.readLineSync()!;
        registrarServicoParaPet(pets, nomePet, nomeServico, valorServico, dataServico);
        break;
      case 'h':
        print("Digite o nome do pet para ver os serviços realizados:");
        String nomePet = stdin.readLineSync()!;
        apresentarServicosDePet(pets, nomePet);
        break;
      case 'i':
        print("Digite a data para ver o total de serviços realizados (AAAA-MM-DD):");
        String data = stdin.readLineSync()!;
        apresentarTotalServicosEmData(pets, data);
        break;
      case 'j':
        print("Saindo do sistema de gerenciamento de petshop.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}
