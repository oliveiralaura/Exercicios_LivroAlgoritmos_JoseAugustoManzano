// Construir um programa que calcule em metros por segundo o valor da velocidade de um projétil que percorre uma distância em quilômetros um espaço de tempo em horas.


void main() {

  var distanciaEmKm = 50 ;
  var tempoEmHoras = 1 ;
  var distanciaEmMetros = distanciaEmKm * 1000;
  var tempoEmSegundos = tempoEmHoras * 3600;
  var velocidadeEmMetrosPorSegundo = distanciaEmMetros / tempoEmSegundos;

  print(velocidadeEmMetrosPorSegundo);
}
