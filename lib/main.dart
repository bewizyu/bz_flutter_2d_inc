import "dart:typed_data";

import 'package:flutter/material.dart';
import "package:flutter/services.dart" show rootBundle;
import 'package:nima/nima_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FIXME: To be removed, this is for testing the .nma asset is loaded
    rootBundle.load("assets/testBZ.nma").then((ByteData data) {
      debugPrint('DATA LOAD $data.runtimeType');
    }).catchError((error) {
      debugPrint('LOAD DATA ERROR, $error');
    });

    return Column(
      children: <Widget>[
        NimaActor("assets/testBZ",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "idle"),
        Image.asset(
          'assets/testBZ.png',
        ),
      ],
    );
  }
}
