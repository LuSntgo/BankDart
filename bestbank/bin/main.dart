void main() {
  ContaCorrente contadaAmanda = ContaCorrente();
  contadaAmanda.titular = "Amanda";
  contadaAmanda.agencia = 123;
  contadaAmanda.conta = 1;

  print("Titular: ${contadaAmanda.titular}");
  print("Agência: ${contadaAmanda.agencia}");
  print("Saldo: ${contadaAmanda.saldo}");

  ContaCorrente contadoTiago = ContaCorrente();
  contadoTiago.titular = "Tiago";
  contadoTiago.agencia = 123;
  contadoTiago.conta = 2;

  print("Titular: ${contadoTiago.titular}");
  print("Agência: ${contadoTiago.agencia}");
  print("Saldo: ${contadoTiago.saldo}");
}

class ContaCorrente {
  String titular = '';
  int agencia = 0;
  int conta = 0;
  double saldo = 30.0; //Promoção: Faça o cadastro e ganhe 30 de saldo
}
