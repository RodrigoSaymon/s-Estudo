import 'package:flutter/material.dart';

import 'saymon.dart';

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

