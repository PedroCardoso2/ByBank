
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

// classe que Roda
class ByteBankApp extends StatelessWidget {
  const ByteBankApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}



// Formulário Transferencia;
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

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controladorCampoValor,
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor:',
                  hintText: '0,00'),
              keyboardType: TextInputType.number,
            ),
          ),

          // Botão de Confirmar.
          OutlinedButton(
              onPressed: () {
                final String numeroConta = _controladorCampoNumeroConta.text;
                final String valor = (_controladorCampoValor.text);

                print('Número da conta: $numeroConta');
                print('Valor: $valor');
              },
              child: Text('Confimar'))
        ],
      ),
    );
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



// Home Principal - Lista de Transferencia
class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        // title: Text('Transferências'),
        appBar: AppBar(
          title: Text('Transferências'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            ItemTransferencia('150.0', '02820531318'),
            ItemTransferencia('200.0', '04280540480'),
            ItemTransferencia('300.0', '13264375896'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ));
  }
}


// Componente de Lista de Transferencia;
class ItemTransferencia extends StatelessWidget {
  final String value;
  final String conta;

  ItemTransferencia(this.value, this.conta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('Conta ${conta}'),
        subtitle: Text('Valor: $value'),
      ),
    );
  }
}

/*
Fazer uma classe que seja Cast para número;
 */
