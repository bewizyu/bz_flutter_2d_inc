import "dart:typed_data";

import 'package:flutter/material.dart';
import "package:flutter/services.dart" show rootBundle;
import 'package:nima/nima_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
        Container(
            width: 100,
            height: 100,
            child: NimaActor("assets/testBZ.nima",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: "Arm")),
        Image.asset('assets/testBZ.png', width: 100, height: 100)
      ])),
    );
  }
}
