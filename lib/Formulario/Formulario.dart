import 'package:flutter/material.dart';

import '../Lista/Lista.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
  TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Editor(_controladorCampoNumeroConta, "Número da conta", "000-000-000-00"),
          Editor(_controladorCampoValor, 'Valor:', '0,00'),


          OutlinedButton(
              onPressed: () {
                final String numeroConta = _controladorCampoNumeroConta.text;
                final String valor = (_controladorCampoValor.text);

                _criaTransferencia(context);
              },
              child: Text('Confimar'))
        ],
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final String numeroConta = _controladorCampoNumeroConta.text;
    final double valor = _controladorCampoValor as double;
    if(numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('Criando transferência');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}


// Componente para construir label (Inputs)
class Editor extends StatelessWidget {
  final TextEditingController _controlador;
  final String _label;
  final String? _hintText;


  Editor(this._controlador, this._label, this._hintText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controlador,
        style: const TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
            labelText: _label,
            hintText: _hintText),
        keyboardType: TextInputType.number,
      ),
    );
  }
}