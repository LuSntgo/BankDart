void main() {
  ContaCorrente contadaAmanda = ContaCorrente();
  ContaCorrente contadoTiago = ContaCorrente();
  contadaAmanda.titular = "Amanda";
  contadaAmanda.chequeEspecial = -110.0;
  contadoTiago.titular = "Tiago";

/*   contadaAmanda.deposito(20.0);
  print("Saldo da ${contadaAmanda.titular}: ${contadaAmanda.saldo}");
  contadaAmanda.saque(80.0);
  print("Saldo da ${contadaAmanda.titular}: ${contadaAmanda.saldo}");

  contadoTiago.deposito(50.0);
  print("Saldo da ${contadoTiago.titular}: ${contadoTiago.saldo}");
  contadoTiago.saque(130.0);
  print("Saldo da ${contadoTiago.titular}: ${contadoTiago.saldo}"); */

  print("Saldo da ${contadaAmanda.titular}: ${contadaAmanda.saldo}");
  print("Saldo da ${contadoTiago.titular}: ${contadoTiago.saldo}");
  bool sucesso = contadaAmanda.transferencia(130.0, contadoTiago);
  print(sucesso);
  print("Saldo da ${contadaAmanda.titular}: ${contadaAmanda.saldo}");
  print("Saldo da ${contadoTiago.titular}: ${contadoTiago.saldo}");
}

class ContaCorrente {
  String titular = '';
  int agencia = 145;
  int conta = 0;
  double saldo = 20.0; //Promoção: Faça o cadastro e ganhe 20 de saldo
  double chequeEspecial = -100.0;

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
