import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/48169399?v=4',
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 5.0),
                Text('Jesus Valdez', style: TextStyle(fontSize: 22.0)),
                SizedBox(height: 5.0),
                Text('Alumno', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.person, color: Colors.black),
          title: Text('Perfil'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.inbox, color: Colors.black),
          title: Text('Mensajeria'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.assessment, color: Colors.black),
          title: Text('Dashboard'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.settings, color: Colors.black),
          title: Text('Configuracion'),
        ),
      ],
    );
  }
}
