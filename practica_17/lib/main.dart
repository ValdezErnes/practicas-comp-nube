import 'package:flutter/material.dart';
import 'src/listview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 17',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListViewPage(),
    );
  }
}
