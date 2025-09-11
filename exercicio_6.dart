import 'dart:io';

void main() {
  print('--- Cardápio ---');
  print('1 - Pizza - R\$ 30,00');
  print('2 - Hambúrguer - R\$ 20,00');
  print('3 - Salada - R\$ 15,00');
  print('4 - Lasanha - R\$ 25,00');
  print('Escolha uma opção (1 a 4):');

  String? escolhaInput = stdin.readLineSync();

  if (escolhaInput != null) {
    int? escolha = int.tryParse(escolhaInput);

    if (escolha != null) {
      switch (escolha) {
        case 1:
          print('Você escolheu Pizza. Valor a pagar: R\$ 30,00');
          break;
        case 2:
          print('Você escolheu Hambúrguer. Valor a pagar: R\$ 20,00');
          break;
        case 3:
          print('Você escolheu Salada. Valor a pagar: R\$ 15,00');
          break;
        case 4:
          print('Você escolheu Lasanha. Valor a pagar: R\$ 25,00');
          break;
        default:
          print('Opção inválida');
      }
    } else {
      print('Por favor, digite um número válido.');
    }
  } else {
    print('Entrada inválida.');
  }
}