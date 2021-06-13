import 'package:bytebank2/models/saldo.dart';
import 'package:bytebank2/screens/dashboard/saldo_card.dart';
import 'package:bytebank2/screens/deposito/formulario_deposito.dart';
import 'package:bytebank2/screens/transferencia/formulario.dart';
import 'package:bytebank2/screens/transferencia/ultimas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../transferencia/lista.dart';
import '../transferencia/lista.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bytebank'),
        ),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SaldoCard(),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FormularioDeposito();
                        },
                      ),
                    );
                  },
                  child: Text("Receber depósito"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FormularioTransferencia();
                        },
                      ),
                    );
                  },
                  child: Text("Nova transferência"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
              ],
            ),
            UltimasTrasnferencias(),
          ],
        ));
  }
}
