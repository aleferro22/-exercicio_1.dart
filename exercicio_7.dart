import 'dart:io';

void main() {
  double saldo = 1000.00;

  while (true) {
    print('\n--- Caixa Eletrônico ---');
    print('1. Saldo');
    print('2. Saque');
    print('3. Depósito');
    print('4. Sair');
    print('Escolha uma opção:');

    String? opcaoInput = stdin.readLineSync();

    if (opcaoInput == null) {
      print('Entrada inválida.');
      continue;
    }

    int? opcao = int.tryParse(opcaoInput);

    if (opcao == null) {
      print('Por favor, digite um número válido.');
      continue;
    }

    switch (opcao) {
      case 1:
        print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        break;

      case 2:
        print('Digite o valor para saque:');
        String? saqueInput = stdin.readLineSync();
        if (saqueInput == null) {
          print('Entrada inválida.');
          break;
        }
        double? valorSaque = double.tryParse(saqueInput.replaceAll(',', '.'));
        if (valorSaque == null || valorSaque <= 0) {
          print('Valor inválido para saque.');
          break;
        }
        if (valorSaque > saldo) {
          print('Saldo insuficiente para saque de R\$ ${valorSaque.toStringAsFixed(2)}.');
        } else {
          saldo -= valorSaque;
          print('Saque de R\$ ${valorSaque.toStringAsFixed(2)} realizado com sucesso.');
          print('Saldo atualizado: R\$ ${saldo.toStringAsFixed(2)}');
        }
        break;

      case 3:
        print('Digite o valor para depósito:');
        String? depositoInput = stdin.readLineSync();
        if (depositoInput == null) {
          print('Entrada inválida.');
          break;
        }
        double? valorDeposito = double.tryParse(depositoInput.replaceAll(',', '.'));
        if (valorDeposito == null || valorDeposito <= 0) {
          print('Valor inválido para depósito.');
          break;
        }
        saldo += valorDeposito;
        print('Depósito de R\$ ${valorDeposito.toStringAsFixed(2)} realizado com sucesso.');
        print('Saldo atualizado: R\$ ${saldo.toStringAsFixed(2)}');
        break;

      case 4:
        print('Encerrando o programa. Obrigado!');
        return;

      default:
        print('Opção inválida.');
    }
  }
}