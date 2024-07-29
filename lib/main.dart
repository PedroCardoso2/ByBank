import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

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
  const FormularioTransferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

// Lista de Transferência
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
