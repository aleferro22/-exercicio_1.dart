import 'dart:io';

void main() {
  print('Digite o valor da compra:');
  String? input = stdin.readLineSync();

  if (input != null) {
    double? valorCompra = double.tryParse(input.replaceAll(',', '.'));

    if (valorCompra != null) {
      if (valorCompra > 100) {
        double desconto = valorCompra * 0.10;
        double valorFinal = valorCompra - desconto;
        print('Compra acima de R\$ 100,00. Desconto de 10% aplicado.');
        print('Valor final: R\$ ${valorFinal.toStringAsFixed(2)}');
      } else {
        print('Valor da compra: R\$ ${valorCompra.toStringAsFixed(2)}');
      }
    } else {
      print('Por favor, digite um valor válido.');
    }
  } else {
    print('Entrada inválida.');
  }
}