import 'package:flutter/material.dart';
import 'package:practica_04/src/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ctrlnom = new TextEditingController();
  final data = new Data(nombre: "", sexo: "");
  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practica 3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlnom,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre',
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
            SizedBox(height: 20.0),
            DropdownButton(
              value: _valor,
              items: [
                DropdownMenuItem(
                  child: Text("Mujer"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Hombre"),
                  value: 2,
                ),
              ],
              onChanged: (selected) {
                setState(() {
                  _valor = selected!;
                });
              }),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange[200]),
              child: Text("Enviar"),
              onPressed: () {
                data.nombre = ctrlnom.text;

                if (_valor == 1) {
                  data.sexo = "Mujer";
                } else {
                  data.sexo = "Hombre";
                }
                Navigator.of( context).push(
                  MaterialPageRoute(
                    builder: (context) => Datospage(data: data),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  String nombre = "";
  String sexo = "";

  Data({required this.nombre, required this.sexo});
}