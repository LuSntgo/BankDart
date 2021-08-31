import '../lib/contaCorrente.dart';
import '../lib/cliente.dart';

void main() {
  ContaCorrente contadaAmanda = ContaCorrente();
  ContaCorrente contadoTiago = ContaCorrente();

  contadaAmanda.saldo = -101.0;

  print(contadaAmanda.saldo);

  Cliente amanda = Cliente();
  amanda.nome = "Amanda";
  amanda.cpf = "123.456.789-00";
  amanda.profissao = "Programadora Dart";

  contadaAmanda.titular = amanda;

  print("Titular: ${contadaAmanda.titular.nome}");
  print("CPF: ${contadaAmanda.titular.cpf}");
  print("Profissão: ${contadaAmanda.titular.profissao}");

  Cliente tiago = Cliente();
  tiago.nome = "Tiago";
  tiago.cpf = "345.456.789-00";
  tiago.profissao = "Programador Dart";

  contadoTiago.titular = tiago;

  print(contadoTiago.titular.nome);
  print(contadoTiago.titular.cpf);
  print(contadoTiago.titular.profissao);
}
