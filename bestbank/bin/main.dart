import '../lib/contaCorrente.dart';
import '../lib/cliente.dart';

void main() {
  ContaCorrente contadaAmanda = ContaCorrente(-123, 12345678);
  ContaCorrente contadoTiago = ContaCorrente(123, 1511231);

  print(
      "O banco possui um total de ${ContaCorrente.totaldeContasCorrentes} contas");

  Cliente amanda = Cliente();
  amanda.nome = "Amanda";
  amanda.cpf = "123.456.789-00";
  amanda.profissao = "Programadora Dart";

  contadaAmanda.titular = amanda;
  print("Titular: ${contadaAmanda.titular.nome}");
  print("CPF: ${contadaAmanda.titular.cpf}");
  print("Profissão: ${contadaAmanda.titular.profissao}");
  print("Agência: ${contadaAmanda.agencia}");
  print("Conta Corrente: ${contadaAmanda.conta}");

  Cliente tiago = Cliente();
  tiago.nome = "Tiago";
  tiago.cpf = "345.456.789-00";
  tiago.profissao = "Programador Dart";

  contadoTiago.titular = tiago;

  print(contadoTiago.titular.nome);
  print(contadoTiago.titular.cpf);
  print(contadoTiago.titular.profissao);
  print("Agência: ${contadoTiago.agencia}");
  print("Conta Corrente: ${contadoTiago.conta}");
}
