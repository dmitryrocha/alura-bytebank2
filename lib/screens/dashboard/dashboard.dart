import 'package:bytebank2/models/saldo.dart';
import 'package:bytebank2/screens/dashboard/saldo_card.dart';
import 'package:bytebank2/screens/deposito/formulario_deposito.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            Consumer<Saldo>(builder: (context, saldo, child) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormularioDeposito();
                  }));
                },
                child: Text("Receber depósito"),
              );
            })
          ],
        ));
  }
}
