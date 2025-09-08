import 'package:flutter/material.dart';
import 'package:practica_01/src/myAlertDialog.dart';

class Userdata extends StatefulWidget {
  const Userdata({super.key});

  @override
  State<Userdata> createState() => _UserdataState();
}

class _UserdataState extends State<Userdata> {
  var _name;
  var _phone;

  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/gear-5.png'),
          SizedBox(height: 10.0,),
          TextField(
            controller: nameCtrl,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Ingresa un nombre',
            ),
          ),
          TextField(
            controller: phoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Ingresa un numero telefonico',
            ),
          ),
          SizedBox(height: 10.0,),
          ElevatedButton (
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            child: Text('Enviar'),
            onPressed: () {
              _name = nameCtrl.text;
              _phone = phoneCtrl.text;
              setState(() {
                showAlertDialog(
                  context, 
                  'El Usuario $_name tiene un telefono $_phone', 
                  'mi app :)))', 
                  'OK', 
                  ':((' 
                  );
              });
            }),

        ]
      ),
    );
  }
}