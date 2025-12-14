import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table - Portrait'), centerTitle: true),
      body: Center(
        child: Table(
          border: TableBorder.all(color: Colors.black, width: 1),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: const [
            TableRow(
              children: [RectangleLarge(), RectangleMedium(), RectangleSmall()],
            ),
            TableRow(
              children: [RectangleMedium(), RectangleSmall(), RectangleLarge()],
            ),
            TableRow(
              children: [RectangleSmall(), RectangleLarge(), RectangleMedium()],
            ),
          ],
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// Rectángulos
// -----------------------------------------------------------------------------

class RectangleLarge extends StatelessWidget {
  const RectangleLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Large',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class RectangleMedium extends StatelessWidget {
  const RectangleMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.green,
      child: const Center(
        child: Text(
          'Medium',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

class RectangleSmall extends StatelessWidget {
  const RectangleSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.red,
      child: const Center(
        child: Text(
          'Small',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
