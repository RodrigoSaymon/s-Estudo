import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Rodrigo());
}

class Rodrigo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Saymon(),
    );
  }
}

class Saymon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SaymonPage();
}

class SaymonPage extends State<Saymon> {
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
        title: Text('Novo App'),
        actions: [
          IconButton(
            onPressed: () {
              add();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              remover();
            },
            icon: Icon(Icons.remove),
          ),
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
                              icon: Icon(Icons.edit)),
                              IconButton(
                              onPressed: () {
                                descontando();
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    )),
              ))),
    );
  }
}
