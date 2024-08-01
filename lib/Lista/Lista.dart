import 'package:flutter/material.dart';

import '../Formulario/Formulario.dart';




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
            // '' ''
            ItemTransferencia(Transferencia(15.00, '02820531318')),
            ItemTransferencia(Transferencia(1000.00, '13264375896')),
            ItemTransferencia(Transferencia(120.00, '04280540480')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              final Future<dynamic> future = Navigator.push(context, MaterialPageRoute(builder: (ctx){
                return FormularioTransferencia();
              }));
              future.then((Transferencia){
                debugPrint('Chegou no Future');
              });
            },
            backgroundColor: Colors.blue,
            child: Icon(Icons.add)
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia values;

  ItemTransferencia(this.values);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('Conta ${values._numeroConta}'),
        subtitle: Text('Valor: \$${values._valor}'),
      ),
    );
  }
}


// Classe para Cast
class Transferencia extends StatelessWidget {

  final double _valor;
  final String _numeroConta;

  Transferencia( this._valor, this._numeroConta);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}