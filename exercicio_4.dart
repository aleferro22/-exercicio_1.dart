import 'dart:io';

void main() {
  print('Digite a primeira nota:');
  String? nota1Input = stdin.readLineSync();

  print('Digite a segunda nota:');
  String? nota2Input = stdin.readLineSync();

  if (nota1Input != null && nota2Input != null) {
    double? nota1 = double.tryParse(nota1Input.replaceAll(',', '.'));
    double? nota2 = double.tryParse(nota2Input.replaceAll(',', '.'));

    if (nota1 != null && nota2 != null) {
      double media = (nota1 + nota2) / 2;
      String situacao;

      if (media >= 7) {
        situacao = 'Aprovado';
      } else if (media >= 4) {
        situacao = 'Recuperação';
      } else {
        situacao = 'Reprovado';
      }

      print('Média final: ${media.toStringAsFixed(2)}');
      print('Situação: $situacao');
    } else {
      print('Por favor, digite valores válidos para as notas.');
    }
  } else {
    print('Entrada inválida.');
  }
}