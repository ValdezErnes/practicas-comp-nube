import 'package:flutter/material.dart';

class HeadContainer extends StatelessWidget {
  final String image;

  const HeadContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Image.network(image),
    );
  }
}
