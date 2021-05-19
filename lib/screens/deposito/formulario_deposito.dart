import 'package:bytebank2/components/constantes.dart';
import 'package:bytebank2/components/editor.dart';
import 'package:flutter/material.dart';

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tituloAppBarReceber),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              dica: dicaCampoValor,
              rotulo: rotuloCampoValor,
              controlador: _controladorCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _criaDeposito(context),
              child: Text(textoBotaoConfirmar),
            ),
          ],
        ),
      ),
    );
  }

  _criaDeposito(BuildContext context) {
    Navigator.pop(context);
  }
}
