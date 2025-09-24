import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/result_page.dart';
import 'package:mini_proyecto_01/src/imc_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nombreCtrl = TextEditingController();
  double pesoValor = 60.0;
  double estaturaValor = 1.60;

  String obtenerClasificacion(double imc) {
    if (imc < 18) return 'Peso Bajo';
    if (imc >= 18 && imc <= 24.9) return 'Normal';
    if (imc >= 25 && imc <= 26.9) return 'Sobrepeso';
    if (imc >= 27 && imc <= 29.9) return 'Obesidad Grado I';
    if (imc >= 30 && imc <= 39.9) return 'Obesidad Grado II';
    return 'Obesidad Grado III';
  }

  String obtenerImagen(double imc) {
    if (imc < 18) return 'assets/images/bajo_peso.jpg';
    if (imc >= 18 && imc <= 24.9) return 'assets/images/normal.jpg';
    if (imc >= 25 && imc <= 26.9) return 'assets/images/sobrepeso.jpg';
    if (imc >= 27 && imc <= 29.9) return 'assets/images/obesidad1.jpg';
    if (imc >= 30 && imc <= 39.9) return 'assets/images/obesidad2.jpg';
    return 'assets/images/obesidad3.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue[100]!, Colors.lightBlue[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.all(20),
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
                    'Calculadora IMC',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[700],
                    ),
                  ),
                  SizedBox(height: 24),
                  TextField(
                    controller: nombreCtrl,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Ingresa tu nombre',
                      filled: true,
                      fillColor: Colors.lightBlue[50],
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Peso: ${pesoValor.toStringAsFixed(1)} kg',
                    style: TextStyle(fontSize: 18, color: Colors.lightBlue[700]),
                  ),
                  Slider(
                    value: pesoValor,
                    min: 20,
                    max: 200,
                    divisions: 180,
                    label: pesoValor.toStringAsFixed(1),
                    activeColor: Colors.lightBlue[400],
                    inactiveColor: Colors.lightBlue[100],
                    onChanged: (value) {
                      setState(() {
                        pesoValor = value;
                      });
                    },
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Estatura: ${estaturaValor.toStringAsFixed(2)} m',
                    style: TextStyle(fontSize: 18, color: Colors.lightBlue[700]),
                  ),
                  Slider(
                    value: estaturaValor,
                    min: 0.50,
                    max: 2.50,
                    divisions: 200,
                    label: estaturaValor.toStringAsFixed(2),
                    activeColor: Colors.lightBlue[400],
                    inactiveColor: Colors.lightBlue[100],
                    onChanged: (value) {
                      setState(() {
                        estaturaValor = value;
                      });
                    },
                  ),
                  SizedBox(height: 40),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.lightBlue[400],
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                    ),
                    icon: Icon(Icons.calculate),
                    label: Text('Calcular IMC', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      double imc = pesoValor / (estaturaValor * estaturaValor);
                      String clasificacion = obtenerClasificacion(imc);
                      String imagen = obtenerImagen(imc);

                      ImcData datos = ImcData(
                        nombre: nombreCtrl.text,
                        peso: pesoValor,
                        estatura: estaturaValor,
                        imc: imc,
                        clasificacion: clasificacion,
                        imagen: imagen,
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(datos: datos),
                        ),
                      );
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
