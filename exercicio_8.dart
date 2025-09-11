import 'dart:io';

bool formaTriangulo(double a, double b, double c) {
  return (a + b > c) && (a + c > b) && (b + c > a);
}

String classificaTriangulo(double a, double b, double c) {
  if (a == b && b == c) {
    return "Equilátero.";
  } else if (a == b || b == c || a == c) {
    return "Isósceles.";
  } else {
    return "Escaleno.";
  }
}

void main() {
  print("Digite o valor do lado a:");
  double? a = double.tryParse(stdin.readLineSync()!);

  print("Digite o valor do lado b:");
  double? b = double.tryParse(stdin.readLineSync()!);

  print("Digite o valor do lado c:");
  double? c = double.tryParse(stdin.readLineSync()!);

  if (a == null || b == null || c == null) {
    print("Entrada inválida. Por favor, digite números válidos.");
    return;
  }

  if (formaTriangulo(a, b, c)) {
    String tipo = classificaTriangulo(a, b, c);
    print("Os lados formam um triângulo $tipo");
  } else {
    print("Os lados não formam um triângulo.");
  }
}