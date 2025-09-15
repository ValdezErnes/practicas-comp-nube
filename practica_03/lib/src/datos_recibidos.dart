import 'package:flutter/material.dart';
import 'package:practica_03/src/home_page.dart';

class DatosRecibidos extends StatelessWidget {
  final Data datos;
  DatosRecibidos({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Recibidos'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Los datos recibidos son:'),
            Text('Nombre: ${datos.nombre}'),
            Text('Sexo: ${datos.sexo}')
          ],
        ),
      ),
    );
  }
}