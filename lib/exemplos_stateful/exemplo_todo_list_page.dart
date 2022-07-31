import 'package:exemplo_state/exemplos_stateful/model/item_model.dart';
import 'package:flutter/material.dart';

class ExemploTodoListPage extends StatefulWidget {
  const ExemploTodoListPage({Key? key}) : super(key: key);

  @override
  State<ExemploTodoListPage> createState() => _ExemploTodoListPageState();
}

class _ExemploTodoListPageState extends State<ExemploTodoListPage> {
  List<ItemModel> items = [];

  _addValuesToItem() {
    items.add(ItemModel(name: 'Limpar Banheiro', done: false));
    items.add(ItemModel(name: 'Limpar Quarto', done: false));
    items.add(ItemModel(name: 'Limpar Cozinha', done: false));
  }

  @override
  void initState() {
    _addValuesToItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return CheckboxListTile(
            title: Text(item.name),
            value: item.done,
            onChanged: (value) {
              setState(() {
                item.done = value!;
              });

              // Chama o metodo build novamente e reconstrói a tela com o componente em um estado diferente.
              // Tudo o que precisarmos alterar na tela após ela ser desenhada precisamos chamar o setState.
            },
          );
        },
      ),
    );
  }
}
