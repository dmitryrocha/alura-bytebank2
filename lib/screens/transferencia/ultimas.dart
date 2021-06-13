import 'package:bytebank2/models/transferencias.dart';
import 'package:bytebank2/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _titulo = 'Últimas Transferências';

class UltimasTrasnferencias extends StatelessWidget {
  const UltimasTrasnferencias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ListaTransferencias();
                },
              ),
            );
          },
          child: Text("Transferências"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
        ),
        Text(
          _titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Consumer<Transferencias>(builder: (context, transferencias, child) {
          final _ultimastransferencias =
              transferencias.transferencias.reversed.toList();
          final _quantidade = transferencias.transferencias.length;
          int tamanho = 2;

          if(_quantidade == 0) {
            return SemTransferenciasCadastradas();
          }

          _quantidade < 2 ? tamanho = _quantidade : tamanho = 2;

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: tamanho,
            shrinkWrap: true,
            itemBuilder: (context, indice) {
              return ItemTransferencia(_ultimastransferencias[indice]);
            },
          );
        })
      ],
    );
  }
}

class 
SemTransferenciasCadastradas extends StatelessWidget {
  const 
  SemTransferenciasCadastradas({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('Você ainda não cadastrou qualquer transferência', textAlign: TextAlign.center,),
      ),
      
    );
  }
}
