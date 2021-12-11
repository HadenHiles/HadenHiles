import 'package:flutter/material.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';
import 'package:hadenhiles/Home.dart';

void main() {
  configureApp();
  runApp(HadenHiles());
}

class HadenHiles extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haden Hiles',
      theme: ThemeData(
        primaryColor: Color(0xff5f4bb6),
        backgroundColor: Color(0xff333333),
      ),
      home: Home(),
    );
  }
}
