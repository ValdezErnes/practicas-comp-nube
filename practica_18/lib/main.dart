import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/table_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Forzar orientación Portrait
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 18',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TablePage(),
    );
  }
}
