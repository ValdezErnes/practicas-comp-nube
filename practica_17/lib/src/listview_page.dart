import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../data/movies.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    final List listMovies = movies['results'];

    return Scaffold(
      appBar: AppBar(title: const Text('Películas')),
      body: ListView.builder(
        itemCount: listMovies.length,
        itemBuilder: (context, index) {
          final movie = listMovies[index];

          return Slidable(
            key: ValueKey(movie['title']),
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Eliminaste ${movie['title']}'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Eliminar',
                ),
              ],
            ),
            child: ListTile(
              leading: Image.network(
                movie['poster'],
                width: 50,
                fit: BoxFit.cover,
              ),
              title: Text(movie['title']),
              subtitle: Text('${movie['director']} • ${movie['year']}'),
            ),
          );
        },
      ),
    );
  }
}
