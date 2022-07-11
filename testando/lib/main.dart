import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Rodrigo());
}

class Rodrigo extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Saymon(),
    );
  }
}

class Saymon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SaymonPage();
}

class SaymonPage extends State<Saymon> {
  int contar = 0;
  Widget item = Container();
  List itens = <Widget>[];

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
        backgroundColor: Colors.teal,
        title: Text(
          'Contando e Descontando',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                add();
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                remover();
              },
              icon: Icon(Icons.remove)),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
          itemCount: itens.length,
          itemBuilder: ((context, index) => Container(
            color: Colors.teal,
         
            
            
            child: ListTile(
                leading: CircleAvatar(
                  child: Text('$index'),
                ),
                title: Text('Despesa $contar'),
                subtitle: Text('previsto ${index * 100}'),
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
                          )),
                      IconButton(
                          onPressed: () {
                            descontando();
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ],
                  ),
                )),
          ))),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(Rodrigo());
// }

// class Rodrigo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Saymon(),
//     );
//   }
// }

// class Saymon extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => SaymonPage();
// }

// class SaymonPage extends State<Saymon> {
//   Widget item = Container();
//   var itens = <Widget>[];
  

//   void add() {
//     setState(() {
//       itens.add(item);
//     });
//   }

//   void remover() {
//     setState(() {
//       itens.remove(item);
//     });
//   }

//   int contar = 0;
//   void contando() {
//     setState(() {
//       contar++;
//     });
//   }

//   void descontando() {
//     setState(() {
//       contar--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('Contando'),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               add();
//             },
//             icon: Icon(Icons.add),
//           ),
//           IconButton(
//             onPressed: () {
//               remover();
//             },
//             icon: Icon(Icons.remove),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: itens.length,
//         itemBuilder: ((context, index) => ListTile(
//               leading: CircleAvatar(
//                 child: Text('$index'),
//               ),
//               title: Text('$contar'),
//               subtitle: Text('previsto ${index * 100}'),
//               trailing: Container(
//                 width: 100,
//                 child: Row(
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           contando();
//                         },
//                         icon: Icon(
//                           Icons.edit,
//                           color: Colors.orange,
//                         )),
//                     IconButton(
//                         onPressed: () {
//                           print(itens);
//                           descontando();
//                         },
//                         icon: Icon(
//                           Icons.delete,
//                           color: Colors.red,
//                         ))
//                   ],
//                 ),
//               ),
//             )),
//       ),
//     );
//   }
// }






// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(Rodrigo());
// // }

// // class Rodrigo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Saymon(),
// //     );
// //   }
// // }

// // class Saymon extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() => SaymonPage();
// // }

// // class SaymonPage extends State<Saymon> {
// //   Widget item = Container();

// //   var itens = <Widget>[Container()];
// //   void add() {
// //     setState(() {
// //       itens.add(item);
// //       print(itens);
// //     });
// //   }

// //   void remover() {
// //     setState(() {
// //       itens.remove(item);
// //     });
// //   }

// //   int contar = 0;

// //   void contando() {
// //     setState(() {
// //       contar++;
// //     });
// //   }

// //   void descontando() {
// //     setState(() {
// //       contar--;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final mediaQuery = MediaQuery.of(context).size;

// //     return Scaffold(
// //         appBar: AppBar(
// //           title: Center(
// //             child: Text('contar'),
// //           ),
// //           actions: [
// //             IconButton(
// //                 onPressed: () {
// //                   add();
// //                 },
// //                 icon: Icon(Icons.add)),
// //             IconButton(
// //                 onPressed: () {
// //                   remover();
// //                 },
// //                 icon: Icon(Icons.remove)),
// //             SizedBox(
// //               width: 10,
// //             ),
// //           ],
// //         ),
// //         body: ListView.builder(
// //             itemCount: itens.length,
// //             itemBuilder: ((context, index) => ListTile(
// //                   leading: CircleAvatar(
// //                     child: Text('$index'),
// //                   ),
// //                   title: Text('$contar'),
// //                   subtitle: Text('previsto ${index * 100}'),
// //                   trailing: Container(
// //                     width: 100,
// //                     child: Row(
// //                       children: [
// //                         IconButton(
// //                           onPressed: () {
// //                             descontando();
// //                           },
// //                           icon: Icon(
// //                             Icons.edit,
// //                           ),
// //                         ),
// //                         IconButton(
// //                           onPressed: () {
// //                             contando();
// //                           },
// //                           icon: Icon(
// //                             Icons.delete,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ))));
// //   }
// // }
