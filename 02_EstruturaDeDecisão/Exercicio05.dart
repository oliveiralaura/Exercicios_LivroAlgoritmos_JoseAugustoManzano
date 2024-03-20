// Efetuar a leitura de três números inteiros "a", "b" e "c" referentes aos valores dos coeficientes da equação de segundo grau ax² + bx + c = 0 e resolver a equação.

void main() {
  double a, b, c;
  a = 7;
  b = 8;
  c = 4;
  double delta = b * b - 4 * a * c;
  if (delta < 0) {
    print("A equação não possui raízes reais.");
  } else if (delta == 0) {
    double raiz = -b / (2 * a);
    print("A equação possui uma raiz real: $raiz");
  } else {
    double raiz1 = (-b + (delta)) / (2 * a);
    double raiz2 = (-b - (delta)) / (2 * a);
    print("A equação possui duas raízes reais:");
    print("Raiz 1: $raiz1");
    print("Raiz 2: $raiz2");
  }
}
