import 'package:flutter/material.dart';
import 'package:practica_01/src/UserData.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 01',
      home: Center(
        child: Userdata(),
      ),
    );
  }
}