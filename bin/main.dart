import 'package:alurabank/cliente.dart';
import 'package:alurabank/conta_corrente.dart';

void main() {
  ContaCorrente conta1 = ContaCorrente(123, 12345);
  ContaCorrente conta2 = ContaCorrente(145, 65482);

  Cliente cliente1 = Cliente();
  cliente1.nome = "André";
  cliente1.cpf = "123.456.789-98";
  cliente1.profissao = "Engenheiro";
  conta1.titular = cliente1;

  // print('Titular da conta: ${conta1.titular.nome}');
  // print('CPF: ${conta1.titular.cpf}');
  // print('Profissão: ${conta1.titular.profissao}');

  Cliente cliente2 = Cliente()
    ..nome = "Amanda"
    ..cpf = "987.654.321-23"
    ..profissao = "Programadora";
  conta2.titular = cliente2;

  // print('Titular da conta: ${conta2.titular.nome}');
  // print('CPF: ${conta2.titular.cpf}');
  // print('Profissão: ${conta2.titular.profissao}');

  print(conta1.agencia);

  print(ContaCorrente.totalDeContasCorrentes);
}
