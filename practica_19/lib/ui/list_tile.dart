import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback onTap;

  const CustomListTile({
    super.key,
    required this.name,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(image)),
      title: Text(name),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
