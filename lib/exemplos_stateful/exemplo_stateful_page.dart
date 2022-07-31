import 'package:flutter/material.dart';

class ExemploStatefulPage extends StatefulWidget {
  const ExemploStatefulPage({Key? key}) : super(key: key);

  @override
  State<ExemploStatefulPage> createState() => _ExemploStatefulPageState();
}

class _ExemploStatefulPageState extends State<ExemploStatefulPage> {
  int cont = 0;

  void _incrementar() {
    cont++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              cont.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementar(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
