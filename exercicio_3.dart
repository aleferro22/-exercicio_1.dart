import 'dart:io';

void main() {
  print('Digite seu peso em kg:');
  String? pesoInput = stdin.readLineSync();

  print('Digite sua altura em metros:');
  String? alturaInput = stdin.readLineSync();

  if (pesoInput != null && alturaInput != null) {
    double? peso = double.tryParse(pesoInput.replaceAll(',', '.'));
    double? altura = double.tryParse(alturaInput.replaceAll(',', '.'));

    if (peso != null && altura != null && altura > 0) {
      double imc = peso / (altura * altura);
      String classificacao;

      if (imc < 18.5) {
        classificacao = 'Abaixo do peso';
      } else if (imc < 25) {
        classificacao = 'Peso normal';
      } else if (imc < 30) {
        classificacao = 'Sobrepeso';
      } else if (imc < 35) {
        classificacao = 'Obesidade grau 1';
      } else if (imc < 40) {
        classificacao = 'Obesidade grau 2';
      } else {
        classificacao = 'Obesidade grau 3';
      }

      print('Seu IMC é ${imc.toStringAsFixed(2)}');
      print('Classificação: $classificacao');
    } else {
      print('Por favor, digite valores válidos para peso e altura.');
    }
  } else {
    print('Entrada inválida.');
  }
}