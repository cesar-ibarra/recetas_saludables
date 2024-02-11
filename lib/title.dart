import 'package:flutter/material.dart';

class Title extends StatefulWidget {
  const Title({
    super.key,
  });

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recetas Saludables',
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 32),
          ),
          const Text('Ricas comidas con sabor latino'),
        ],
      ),
    );
  }
}
