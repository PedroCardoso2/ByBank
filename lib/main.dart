
import 'package:flutter/material.dart';

import 'Lista/Lista.dart';

void main() => runApp(ByteBankApp());

// classe que Roda
class ByteBankApp extends StatelessWidget {
  const ByteBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaTransferencia(),
      ),
    );
  }
}



// Formulário Transferencia;






/*

Atividade
1) Fazer uma classe que seja Cast para número;
2) Fazer uma Tela de Login

 */
