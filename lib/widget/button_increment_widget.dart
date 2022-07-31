import 'package:exemplo_state/exemplos_stateful/exemplo_button_increment_page.dart';
import 'package:flutter/material.dart';

class ButtonIncrementWidget extends StatelessWidget {
  final VoidCallback increment;
  const ButtonIncrementWidget({Key? key, required this.increment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Build ButtonIncrementWidget');
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        increment();
      },
    );
  }
}

class ButtonIncrement2Widget extends StatelessWidget {
  const ButtonIncrement2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Build ButtonIncrementWidget');
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        context
            .findAncestorStateOfType<ExemploButtonIncrementPageState>()
            ?.incrementCounter();
      },
    );
  }
}
