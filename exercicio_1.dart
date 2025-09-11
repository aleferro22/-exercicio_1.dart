import 'dart:io';

void main() {
  print('Digite sua idade:');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? idade = int.tryParse(input);

    if (idade != null) {
      if (idade >= 16) {
        print('Você está apto(a) a votar este ano.');
      } else {
        print('Você não está apto(a) a votar este ano.');
      }
    } else {
      print('Por favor, digite um número válido para a idade.');
    }
  } else {
    print('Entrada inválida.');
  }
}