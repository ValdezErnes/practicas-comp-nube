import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../ui/list_tile.dart';
import 'details_page.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  Future<List> fetchCharacters() async {
    final response = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );
    final data = json.decode(response.body);
    return data['results'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rick & Morty')),
      body: FutureBuilder(
        future: fetchCharacters(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: Image.asset('assets/loading.gif'));
          }

          final characters = snapshot.data as List;

          return ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              return CustomListTile(
                name: character['name'],
                image: character['image'],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailsPage(character: character),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
