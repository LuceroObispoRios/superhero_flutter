import 'package:flutter/material.dart';
import 'package:superhero_flutter/models/hero.dart';

class HeroDetailScreen extends StatelessWidget {
  final SuperHero hero;

  const HeroDetailScreen({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hero.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(hero.path),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Name: ${hero.name}'),
            Text('Full Name: ${hero.fullName}'),
          ],
        ),
      ),
    );
  }
}
