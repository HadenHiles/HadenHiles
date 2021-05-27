import 'package:flutter/material.dart';
import 'package:hadenhiles/Home.dart';

void main() {
  runApp(HadenHiles());
}

class HadenHiles extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haden Hiles',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xff5f4bb6),
        backgroundColor: Color(0xff333333),
      ),
      home: Home(),
    );
  }
}
