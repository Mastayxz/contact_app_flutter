import 'package:flutter/material.dart';
import 'package:flutter_application/screens/base_screen.dart';
import 'package:flutter_application/models/hero.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Person> heroes = [
    Person(
      name: 'Restu',
      image: 'assets/images/Restu.jpg',
      role: 'Software Engineer',
      bio: 'Restu dengan nama lengkap I Made Restu Jaya Putra',
      phone: '087853675849',
      skill: ['Give Up', 'Gamer', 'Clutch'],
    ),
    Person(
      name: 'Riki',
      image: 'assets/images/invoker.png',
      role: 'Software Engineer',
      bio: 'Restu dengan nama lengkap I Made Restu Jaya Putra',
      phone: '087853675849',
      skill: ['Give Up', 'Gamer', 'Clutch'],
    ),
    Person(
      name: 'Ben',
      image: 'assets/images/bane.png',
      role: 'Software Engineer',
      bio: 'Restu dengan nama lengkap I Made Restu Jaya Putra',
      phone: '087853675849',
      skill: ['Give Up', 'Gamer', 'Clutch'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseScreen(heroes: heroes),
    );
  }
}
