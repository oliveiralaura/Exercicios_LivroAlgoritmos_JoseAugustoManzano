// Em uma eleição sindical concorreram ao cargo de presidente três candidatos. 
//Duranta a apuração ds votos foram computados votos nulos e em branco, além dos votos válidos para cada candidato. 
//Deve ser criado um programa de computador que faça a leitura da quantidade de votos válidos para cada candidato, 
//além de let também a quantidade de votos nulos e em branco. 
//Ao final, o programa deve apresentar o número total de eleitores, considerando os votos válidos, nulos e em branco;
// o percentual corresponde de votos válidos dos candidatos e ]
//de votos brancos e nulos.
void main() {
  int votosCandidato1 = 23;
  int votosCandidato2 = 24;
  int votosCandidato3 = 32;
  int votosNulos = 12;
  int votosBrancos = 6;
 
  int totalEleitores = votosCandidato1 + votosCandidato2 + votosCandidato3 + votosNulos + votosBrancos;
 
  double percentualCandidato1 = (votosCandidato1 / totalEleitores) * 100;
  double percentualCandidato2 = (votosCandidato2 / totalEleitores) * 100;
  double percentualCandidato3 = (votosCandidato3 / totalEleitores) * 100;
  double percentualNulos = (votosNulos / totalEleitores) * 100;
  double percentualBrancos = (votosBrancos / totalEleitores) * 100;
 
 
  print("Total de eleitores: $totalEleitores");
  print("Percentual de votos válidos para o candidato 1: ${percentualCandidato1.toStringAsFixed(2)}%");
  print("Percentual de votos válidos para o candidato 2: ${percentualCandidato2.toStringAsFixed(2)}%");
  print("Percentual de votos válidos para o candidato 3: ${percentualCandidato3.toStringAsFixed(2)}%");
  print("Percentual de votos nulos: ${percentualNulos.toStringAsFixed(2)}%");
  print("Percentual de votos em branco: ${percentualBrancos.toStringAsFixed(2)}%");
}