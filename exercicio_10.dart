import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final numeroSecreto = random.nextInt(100) + 1; // número entre 1 e 100
  int? palpite;
  int tentativas = 0;

  print("Bem-vindo ao jogo de adivinhação!");
  print("Tente adivinhar o número entre 1 e 100.");

  do {
    stdout.write("Digite seu palpite: ");
    palpite = int.tryParse(stdin.readLineSync()!);

    if (palpite == null) {
      print("Por favor, digite um número válido.");
      continue;
    }

    tentativas++;

    if (palpite == numeroSecreto) {
      print("Parabéns! Você acertou o número em $tentativas tentativas.");
      break;
    } else {
      String dica = palpite > numeroSecreto ? "Muito alto" : "Muito baixo";
      print(dica);
    }
  } while (true);
}