import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  // hardcodear
  final dogs = const [
    'Ginger', 
    'KC',  
    'Blackie', 
    'Nicky', 
    'Candy',
    'Dobbie',
    'Naoisha',
    ];

  final cats = const [
    'Moji', 
    'Moka', 
    'Felix',
    'Pikachu',
    'Shadow'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: ListView(
        children: [
          ...dogs
              .map(
                (dog) => ListTile(
                  leading: const Icon(Icons.pets),
                  title: Text(dog),
                  subtitle: Text('un lindo perrito'),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  tileColor: Colors.purple,
                  textColor: Colors.white,
                ),
              ),
          Divider(),
           ...cats
              .map(
                (cat) {
                  return ListTile(
                    leading: const Icon(Icons.pets),
                    title: Text(cat),
                    subtitle: Text('Gatito problemático'),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    tileColor: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                  ),
                );
                }
              ),

        ],
      ),
    );
  }
}
