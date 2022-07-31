import 'package:exemplo_state/widget/button_increment_widget.dart';
import 'package:flutter/material.dart';

class ExemploButtonIncrementPage extends StatefulWidget {
  const ExemploButtonIncrementPage({Key? key}) : super(key: key);

  //Para segundo exemplo retirar o estado _privado do State
  @override
  State<ExemploButtonIncrementPage> createState() =>
      ExemploButtonIncrementPageState();
}

class ExemploButtonIncrementPageState
    extends State<ExemploButtonIncrementPage> {
  int _count = 0;

  //Para segundo exemplo retirar o estado _privado da funcao
  void incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build ExemploButtonIncrementPage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incremente setState'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Valor incrementado:'),
            Text('$_count'),
            // ButtonIncrementWidget(
            //   increment: incrementCounter,
            // ),

            // const para rebuildar apenas a page e nao o botao
            const ButtonIncrement2Widget(),
          ],
        ),
      ),
    );
  }
}
