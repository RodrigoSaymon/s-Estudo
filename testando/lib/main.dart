import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Rodrigo());
}

class Rodrigo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  Widget item = Container();

  var itens = <Widget>[Container()];
  void add() {
    setState(() {
      itens.add(item);
      print(itens);
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
    final mediaQuery = MediaQuery.of(context).size;
    
    // int index = 0;
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('contar'),
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
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: ListView.builder(
            
            itemCount: itens.length,
            itemBuilder: ((context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('$index'),
                  ),
                  title: Text('$contar'),
                  subtitle: Text('previsto ${index * 100}'),
                  trailing: Container(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            descontando();
                          },
                          icon: Icon(
                            Icons.edit,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            contando();

                            // itens.remove(itens);
                            // contando();
                          },
                          icon: Icon(
                            Icons.delete,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  // ],
                ))));
  }
}

// import 'package:flutter/cupertino.dart';
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
//   State<Saymon> createState() => SaymonPage();
// }

// class SaymonPage extends State<Saymon> {
//   Widget item = Container();
//   var itens = <Widget>[];

//   void addItem() {
//     setState(() {
//       itens.add(item);
//     });
//   }

//   void removItem() {
//     int index = 0;
//     setState(() {
//       int x = index++;
//       itens.remove(itens[x]);
//     });
//   }

//   int contar = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Center(
//             child: Text('Vamos contar!'),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 removItem();
//               },
//               icon: Icon(Icons.remove),
//             ),
//             IconButton(
//               onPressed: () {
//                 addItem();
//               },
//               icon: Icon(Icons.add),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//           ],
//         ),
//         body: ListView.builder(
//           itemCount: itens.length,
//           itemBuilder: (context, index) => Column(children: [
//             Text('$contar'),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 CircleAvatar(child: Text('$index')),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       contar++;
//                     });
//                   },
//                   child: Text('aperte'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       contar--;
//                     });
//                   },
//                   child: Text('aperte'),
//                 ),
//               ],
//             )
//           ]),
//         ));
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
// //   State<Saymon> createState() => SaymonPage();
// // }

// // class SaymonPage extends State<Saymon> {
// //   Widget item = Container();
// //   var itens = <Widget>[];
// //   // final int index = 0;

// //   void itens1() {
// //     setState(() {
// //       itens.add(item);
// //     });
// //   }

// //   void itens2() {
// //     setState(() {
// //       itens.remove(item);
// //     });
// //   }

// //   void itens3(int index) {
// //     setState(() {
// //       itens.removeAt(index);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('vamos'), actions: [
// //         IconButton(
// //             onPressed: () {
// //               itens1();
// //             },
// //             icon: Icon(Icons.add)),
// //         IconButton(
// //             onPressed: () {
// //               itens2();
// //             },
// //             icon: Icon(Icons.remove)),
// //         SizedBox(
// //           width: 10,
// //         )
// //       ]),
// //       body: ListView.builder(
// //         itemCount: itens.length,
// //         itemBuilder: ((context, index) => ListTile(
// //               leading: CircleAvatar(child: Text('$index')) ,
// //               title: TextField(),
// //               subtitle: Text('preisto 100.00'),
// //               trailing: IconButton(
// //                 onPressed: () {
// //                   setState(() {
// //                     String nome = '$index';
// //                     int nome2 = int.parse(nome);

// //                     itens.removeAt(index);
// //                   });
// //                 },
// //                 icon: Icon(Icons.remove_circle),
// //               ),
// //             )),
// //       ),
// //     );
// //   }
// // }

// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Rodrigo(),
// // //     );
// // //   }
// // // }

// // // class Rodrigo extends StatefulWidget {
// // //   @override
// // //   State<Rodrigo> createState() => RodrigoPage();
// // // }

// // // class RodrigoPage extends State<Rodrigo> {
// // //   Widget item = Container(
// // //     child: Row(children: const [
// // //       CircleAvatar(),
// // //       ListTile(
// // //           title: Text('Rodrigo'),
// // //           subtitle: Text('SaymonFragosoBorges'),
// // //           trailing: CircleAvatar())
// // //     ]),
// // //   );

// // //   void item2() {
// // //     setState(() {
// // //       itens.add(item);
// // //     });
// // //   }

// // //   void item3() {
// // //     setState(() {
// // //       itens.remove(item);
// // //     });
// // //   }

// // //   var itens = <Widget>[];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // final mediaQuery = MediaQuery.of(context).size;
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.black,
// // //         actions: [
// // //           IconButton(
// // //               onPressed: () {
// // //                 item3();
// // //               },
// // //               icon: const Icon(Icons.menu)),
// // //           IconButton(
// // //             onPressed: () {
// // //               item2();
// // //             },
// // //             icon: const Icon(Icons.add),
// // //           ),
// // //           const SizedBox(
// // //             width: 10,
// // //           ),
// // //         ],
// // //         title: const Center(
// // //             child: Text(
// // //           'Descontraindo',
// // //           style: TextStyle(fontSize: 30),
// // //         )),
// // //       ),
// // //       body: ListView.builder(
// // //         itemCount: itens.length,
// // //         itemBuilder: (BuildContext contex, int index) {
// // //           return const ListTile(
// // //             leading: CircleAvatar(),
// // //             title: Text('água'),
// // //             subtitle: Text('previsto: 100,00'),
// // //             trailing: Text('50,00'),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
