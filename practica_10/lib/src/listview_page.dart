import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final List<String> tipos = [
    "Normal",
    "Fighting",
    "Flying",
    "Poison",
    "Ground",
    "Rock",
    "Bug",
    "Ghost",
    "Steel",
    "Fire",
    "Water",
    "Grass",
    "Electric",
    "Psychic",
    "Ice",
    "Dragon",
    "Dark",
    "Fairy",
    "Unknown",
    "Shadow",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 10 - Pokedex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: tipos.map((tipo) {
          return ListTile(
            contentPadding: EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 0.0),
            title: Text(tipo),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/poke-ball.png',
              ),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          );
        }).toList(),
      ),
    );
  }
}
