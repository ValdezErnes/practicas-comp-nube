import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final String title;
  final String value;

  const DetailsContainer({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('$title: $value'),
    );
  }
}
