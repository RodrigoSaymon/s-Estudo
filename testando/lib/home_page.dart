import 'package:flutter/material.dart';

import 'saymon.dart';

class HomePage extends State<Saymon> {
  Widget item = Container();
  var itens = <Widget>[];

  void add() {
    setState(() {
      itens.add(item);
    });
  }

  void remover() {
    setState(() {
      itens.remove(item);
    });
  }

  int contar = 0;
  void contando() {
    setState(() {
      contar++;
    });
  }

  void descontando() {
    setState(() {
      contar--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu novo APP'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: ((context, index) => Container(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('$index'),
                ),
                title: Text('Despesa $contar'),
                subtitle: Text('Previsto: ${100 * index}'),
                trailing: Container(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          contando();
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.orange,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          descontando();
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              add();
            },
            tooltip: '',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              remover();
            },
            tooltip: '',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
