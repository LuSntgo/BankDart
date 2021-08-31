import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  int agencia = 145;
  int conta = 0;
  double _saldo = 20.0;
  double chequeEspecial = -100.0;

  double get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print(
          "Erro! Tentei modificar o valor de saldo para um valor menor que o cheque especial.");
    }
  }

  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print("Sem saldo suficiente.");
      return false;
    } else {
      print("Sacando $valor reais.");
      return true;
    }
  }

  bool transferencia(double valorDeTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorDeTransferencia)) {
      return false;
    } else {
      this.saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    this.saldo += valorDoDeposito;
    return this.saldo;
  }
}
