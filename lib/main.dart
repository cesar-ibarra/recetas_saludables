import 'package:flutter/material.dart';
import 'package:recetas_saludables/data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(),
              SubTitle(subtitle: "Desayunos"),
              SubTitle(subtitle: "Almuerzos"),
              AlmuerzosCarrousel(),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

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

class AlmuerzosCarrousel extends StatelessWidget {
  const AlmuerzosCarrousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 248,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AlmuerzosCard(
          index: index,
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: almuerzos.length,
      ),
    );
  }
}

class AlmuerzosCard extends StatelessWidget {
  final int index;
  const AlmuerzosCard({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 248,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(
            almuerzos[index]['image'].toString(),
          ),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      child: Container(
        width: 164,
        height: 124,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0),
              Colors.black.withOpacity(0.8),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                almuerzos[index]['title'].toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  final String subtitle;
  const SubTitle({
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        subtitle,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 28),
      ),
    );
  }
}
