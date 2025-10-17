import 'package:flutter/material.dart';
import 'animated_page.dart';
import 'tween_page.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Práctica 16 - Animaciones"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.animation, color: Colors.blue),
            title: const Text("Animated Container"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnimatedPage()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.auto_awesome, color: Colors.purple),
            title: const Text("Tween Animation Builder"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TweenPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
