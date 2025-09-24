import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/imc_data.dart';

class ResultPage extends StatelessWidget {
  final ImcData datos;

  ResultPage({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado IMC'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue[100]!, Colors.lightBlue[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            color: Colors.white.withOpacity(0.95),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hola ${datos.nombre}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.lightBlue[700]),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(datos.imagen, height: 180, width: 180, fit: BoxFit.cover),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Tu IMC es: ${datos.imc.toStringAsFixed(1)}',
                    style: TextStyle(fontSize: 22, color: Colors.lightBlue[800]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Clasificación: ${datos.clasificacion}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlue[600]),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue[300],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                    ),
                    icon: Icon(Icons.arrow_back),
                    label: Text('Volver a Calcular'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
