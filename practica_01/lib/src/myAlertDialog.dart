import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String msg, String titulo, String botonOk, String botonCancel) {
  Widget botonCancelar =  ElevatedButton(
    onPressed: (){}, child: Text(botonCancel));
  Widget btnOk = ElevatedButton(
    onPressed: (){Navigator.of(context).pop();}, child: Text(botonOk));
  AlertDialog alert = AlertDialog(
    title: Text(titulo),
    content: Text(msg),
    actions: [
      botonCancelar,
      btnOk
    ],
  );
  showDialog(
    context: context, 
    builder: (BuildContext context) {
      return alert;
    }
  );
}