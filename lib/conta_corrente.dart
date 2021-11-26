import 'cliente.dart';

class ContaCorrente {
  ContaCorrente(int novaAgencia, this.conta) {
    if (novaAgencia > 0) _agencia = novaAgencia;
    totalDeContasCorrentes++;
  }

  //Faz parte da classe e não da instância
  static int totalDeContasCorrentes = 0;

  late Cliente titular;
  late int _agencia;
  int get agencia => _agencia;
  set agencia(int novaAgencia) => {if (novaAgencia > 0) _agencia = novaAgencia};

  late int conta;
  double _saldo = 30.0;
  double chequeEspecial = -100;

  double get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print(
          'Erro! Tentei mudar o saldo para valor menor que o cheque especial.');
    }
  }

  // void definirSaldo(double novoSaldo) {
  //   if (novoSaldo >= chequeEspecial) {
  //     this._saldo = novoSaldo;
  //   } else {
  //     print(
  //         'Erro! Tentei mudar o saldo para valor menor que o cheque especial.');
  //   }
  // }

  // double obterSaldo() {
  //   return this._saldo;
  // }

  bool verificaSaldo(double valor) {
    if (_saldo - valor < chequeEspecial) {
      print('Saldo insuficiente.');
      return false;
    } else {
      print('Movimentando $valor reais.');
      return true;
    }
  }

  bool transferencia(double valorDeTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorDeTransferencia)) {
      return false;
    } else {
      _saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      _saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    _saldo += valorDoDeposito;
    return _saldo;
  }
}
