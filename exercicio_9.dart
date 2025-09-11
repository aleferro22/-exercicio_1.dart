import 'dart:io';

double calculaImposto(double salario) {
  if (salario <= 1903.98) {
    return 0.0;
  } else if (salario <= 2826.65) {
    return salario * 0.075;
  } else if (salario <= 3751.05) {
    return salario * 0.15;
  } else if (salario <= 4664.68) {
    return salario * 0.225;
  } else {
    return salario * 0.275;
  }
}

void main() {
  print("Digite o salário mensal do funcionário (R\$):");
  double? salario = double.tryParse(stdin.readLineSync()!);

  if (salario == null || salario < 0) {
    print("Entrada inválida. Por favor, digite um valor numérico positivo.");
    return;
  }

  double imposto = calculaImposto(salario);

  if (imposto == 0) {
    print("Isento de imposto de renda.");
  } else {
    print("O valor do imposto a ser pago é: R\$ ${imposto.toStringAsFixed(2)}");
  }
}