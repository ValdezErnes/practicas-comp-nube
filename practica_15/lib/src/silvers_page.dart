import 'dart:math';
import 'package:flutter/material.dart';

class SliversPage extends StatelessWidget {
  const SliversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                "Práctica 15 - Sliver",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              background: Image.network(
                "https://wallpaperaccess.com/full/496878.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final random = Random();
                final color = Color.fromARGB(
                  255,
                  random.nextInt(255),
                  random.nextInt(255),
                  random.nextInt(255),
                );
                return Container(
                  height: 100,
                  color: color,
                  alignment: Alignment.center,
                  child: Text(
                    'Elemento #$index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
