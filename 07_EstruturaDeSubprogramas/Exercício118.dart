// Exercício: Gerenciamento de Produtos

// Descrição:
// Desenvolva um programa que gerencie os registros de 20 produtos em um estoque, contendo os campos código, descrição e quantidade. O programa deve utilizar subprogramas e apresentar um menu para executar as seguintes etapas:

// Passo a Passo:

// 1. Cadastrar os 20 produtos:
//    - Solicitar ao usuário que insira o código, descrição e quantidade de 20 produtos.
//    - Armazenar os registros em uma estrutura de dados adequada.

// 2. Classificar os registros por código do produto:
//    - Ordenar os registros dos produtos por código.

// 3. Pesquisar um produto pelo código:
//    - Solicitar ao usuário que digite o código do produto a ser pesquisado.
//    - Utilizar busca sequencial ou binária para encontrar o registro do produto especificado.
//    - Apresentar o resultado da pesquisa.

// 4. Adicionar quantidade a um produto específico:
//    - Solicitar ao usuário que digite o código do produto ao qual deseja adicionar quantidade.
//    - Solicitar ao usuário que digite a quantidade a ser adicionada.
//    - Atualizar a quantidade do produto especificado.

// 5. Remover quantidade de um produto específico:
//    - Solicitar ao usuário que digite o código do produto do qual deseja remover quantidade.
//    - Solicitar ao usuário que digite a quantidade a ser removida.
//    - Verificar se a quantidade a ser removida não excede a quantidade em estoque.
//    - Atualizar a quantidade do produto especificado.

// 6. Apresentar de forma ordenada os registros dos produtos em estoque:
//    - Exibir os registros dos produtos em estoque, ordenados por código.

// 7. Sair do programa de controle de estoque.

// Exemplo em Pseudocódigo:
// produto = estrutura {codigo, descricao, quantidade}
// produtos[20] = vetor de produto

// PROCEDIMENTO cadastrar_produtos(produtos)
//     PARA i DE 0 ATÉ 19 FAÇA
//         ESCREVER "Cadastro do Produto", i + 1
//         ESCREVER "Código do Produto:"
//         LER produtos[i].codigo
//         ESCREVER "Descrição do Produto:"
//         LER produtos[i].descricao
//         ESCREVER "Quantidade do Produto:"
//         LER produtos[i].quantidade
//     FIM PARA
// FIM PROCEDIMENTO

// PROCEDIMENTO classificar_registros_por_codigo(produtos)
//     ALGORITMO DE ORDENAÇÃO (por exemplo, Quick Sort) para ordenar produtos por código
// FIM PROCEDIMENTO

// FUNÇÃO pesquisar_produto_por_codigo(produtos, codigo)
//     ALGORITMO DE BUSCA (sequencial ou binária) para encontrar produto com código especificado
// FIM FUNÇÃO

// PROCEDIMENTO adicionar_quantidade_a_produto(produtos, codigo, quantidade_adicionar)
//     PARA CADA produto EM produtos FAÇA
//         SE produto.codigo == codigo ENTÃO
//             produto.quantidade = produto.quantidade + quantidade_adicionar
//             ESCREVER "Quantidade adicionada com sucesso."
//             RETORNAR
//         FIM SE
//     FIM PARA
//     ESCREVER "Produto não encontrado."
// FIM PROCEDIMENTO

// PROCEDIMENTO remover_quantidade_de_produto(produtos, codigo, quantidade_remover)
//     PARA CADA produto EM produtos FAÇA
//         SE produto.codigo == codigo ENTÃO
//             SE quantidade_remover <= produto.quantidade ENTÃO
//                 produto.quantidade = produto.quantidade - quantidade_remover
//                 ESCREVER "Quantidade removida com sucesso."
//             SENÃO
//                 ESCREVER "Quantidade a remover excede a quantidade em estoque."
//             FIM SE
//             RETORNAR
//         FIM SE
//     FIM PARA
//     ESCREVER "Produto não encontrado."
// FIM PROCEDIMENTO

// PROCEDIMENTO apresentar_registros_de_produtos(produtos)
//     ESCREVER "Produtos em estoque:"
//     PARA CADA produto EM produtos FAÇA
//         ESCREVER "-", produto.codigo, ", Descrição:", produto.descricao, ", Quantidade:", produto.quantidade
//     FIM PARA
// FIM PROCEDIMENTO

import 'dart:io';

class Produto {
  int codigo;
  String descricao;
  int quantidade;

  Produto(this.codigo, this.descricao, this.quantidade);
}

void cadastrarProdutos(List<Produto> produtos) {
  for (int i = 0; i < 20; i++) {
    print("Cadastro do Produto ${i + 1}");
    print("Código do Produto:");
    int codigo = int.parse(stdin.readLineSync()!);

    print("Descrição do Produto:");
    String descricao = stdin.readLineSync()!;

    print("Quantidade do Produto:");
    int quantidade = int.parse(stdin.readLineSync()!);

    produtos.add(Produto(codigo, descricao, quantidade));
  }
}

void classificarRegistrosPorCodigo(List<Produto> produtos) {
  produtos.sort((a, b) => a.codigo.compareTo(b.codigo));
}

Produto? pesquisarProdutoPorCodigo(List<Produto> produtos, int codigo) {
  for (Produto produto in produtos) {
    if (produto.codigo == codigo) {
      return produto;
    }
  }
  return null;
}

void adicionarQuantidadeAProduto(List<Produto> produtos, int codigo, int quantidadeAdicionar) {
  for (Produto produto in produtos) {
    if (produto.codigo == codigo) {
      produto.quantidade += quantidadeAdicionar;
      print("Quantidade adicionada com sucesso.");
      return;
    }
  }
  print("Produto não encontrado.");
}

void removerQuantidadeDeProduto(List<Produto> produtos, int codigo, int quantidadeRemover) {
  for (Produto produto in produtos) {
    if (produto.codigo == codigo) {
      if (quantidadeRemover <= produto.quantidade) {
        produto.quantidade -= quantidadeRemover;
        print("Quantidade removida com sucesso.");
      } else {
        print("Quantidade a remover excede a quantidade em estoque.");
      }
      return;
    }
  }
  print("Produto não encontrado.");
}

void apresentarRegistrosDeProdutos(List<Produto> produtos) {
  print("Produtos em estoque:");
  for (Produto produto in produtos) {
    print("- Código: ${produto.codigo}, Descrição: ${produto.descricao}, Quantidade: ${produto.quantidade}");
  }
}

void main() {
  List<Produto> produtos = [];

  while (true) {
    print("\nMenu:");
    print("1. Cadastrar Produtos");
    print("2. Classificar Registros por Código");
    print("3. Pesquisar Produto por Código");
    print("4. Adicionar Quantidade a um Produto");
    print("5. Remover Quantidade de um Produto");
    print("6. Apresentar Registros de Produtos em Estoque");
    print("7. Sair");

    print("\nEscolha uma opção:");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarProdutos(produtos);
        break;
      case 2:
        classificarRegistrosPorCodigo(produtos);
        break;
      case 3:
        print("Digite o código do produto a ser pesquisado:");
        int codigoPesquisa = int.parse(stdin.readLineSync()!);
        Produto? produtoEncontrado = pesquisarProdutoPorCodigo(produtos, codigoPesquisa);
        if (produtoEncontrado != null) {
          print("Produto encontrado: Código: ${produtoEncontrado.codigo}, Descrição: ${produtoEncontrado.descricao}, Quantidade: ${produtoEncontrado.quantidade}");
        } else {
          print("Produto não encontrado.");
        }
        break;
      case 4:
        print("Digite o código do produto ao qual deseja adicionar quantidade:");
        int codigoAdicao = int.parse(stdin.readLineSync()!);
        print("Digite a quantidade a ser adicionada:");
        int quantidadeAdicao = int.parse(stdin.readLineSync()!);
        adicionarQuantidadeAProduto(produtos, codigoAdicao, quantidadeAdicao);
        break;
      case 5:
        print("Digite o código do produto do qual deseja remover quantidade:");
        int codigoRemocao = int.parse(stdin.readLineSync()!);
        print("Digite a quantidade a ser removida:");
        int quantidadeRemocao = int.parse(stdin.readLineSync()!);
        removerQuantidadeDeProduto(produtos, codigoRemocao, quantidadeRemocao);
        break;
      case 6:
        apresentarRegistrosDeProdutos(produtos);
        break;
      case 7:
        print("Saindo do programa de controle de estoque.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}
