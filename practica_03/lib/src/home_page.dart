import 'package:flutter/material.dart';
import 'package:practica_03/src/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ctrlNombre = new TextEditingController();
  final data = new Data(nombre:'',sexo:'');
  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: Text('Practica 03'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlNombre,
              keyboardType:  TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Ingresa el Nombre',
                contentPadding: EdgeInsets.all(20)
              ),
            ),
            SizedBox(height: 20),
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
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[200],
                foregroundColor: Colors.white            
              ),
              child: Text('Enviar'),
              onPressed: (){
                data.nombre = ctrlNombre.text;
                if(_valor == 1){
                  data.sexo = 'Mujer';
                } else {
                  data.sexo = 'Hombre';
                }
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DatosRecibidos(datos: data),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
class Data {
  String nombre;
  String sexo;
  Data({required this.nombre, required this.sexo});
}