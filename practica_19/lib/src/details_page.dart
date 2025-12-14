import 'package:flutter/material.dart';
import '../ui/head_container.dart';
import '../ui/details_container.dart';
import 'pdf_preview.dart';

class DetailsPage extends StatelessWidget {
  final Map character;

  const DetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character['name'])),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.picture_as_pdf),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PdfPreviewPage(character: character),
            ),
          );
        },
      ),
      body: Column(
        children: [
          HeadContainer(image: character['image']),
          DetailsContainer(title: 'Status', value: character['status']),
          DetailsContainer(title: 'Species', value: character['species']),
          DetailsContainer(title: 'Gender', value: character['gender']),
        ],
      ),
    );
  }
}
