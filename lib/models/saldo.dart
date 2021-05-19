import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Saldo extends ChangeNotifier {
  double valor;

  Saldo(this.valor);

  void adiciona(double valor) {
    this.valor += valor;
    notifyListeners();
  }

  void subtrair(double valor) {
    this.valor -= valor;
    notifyListeners();
  }

  @override
  String toString() {
    return 'R\$ $valor';
  }
}
