import 'package:flutter/material.dart';

class TweenPage extends StatefulWidget {
  const TweenPage({super.key});

  @override
  State<TweenPage> createState() => _TweenPageState();
}

class _TweenPageState extends State<TweenPage> {
  double _targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TweenAnimationBuilder")),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: _targetValue),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            return Icon(
              Icons.star,
              color: Colors.amber,
              size: value,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _targetValue = _targetValue == 24.0 ? 200.0 : 24.0;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
