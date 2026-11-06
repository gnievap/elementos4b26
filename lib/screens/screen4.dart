import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  final Map<String, String> perros = const {
    'Ginger': 'assets/imgs/ginger.jpg',
    'KC': 'assets/imgs/KC.jpg',
    'Blackie': 'assets/imgs/blackie.jpg',
    'Nicky': 'assets/imgs/nicky.jpg',
    'Naoisha': 'assets/imgs/naoisha.jpg',
  };

  final Map<String, String> gatos = const {
    'Moji': 'assets/imgs/moji.jpg',
    'Moka': 'assets/imgs/moka.jpg',
    'Felix': 'assets/imgs/felix.jpg',
  };

  // hardcodear
  final cats = const ['Moji', 'Moka', 'Felix', 'Pikachu', 'Shadow'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: ListView(
        children: [
          ...perros.entries.map((perro) {
            return crearTile(
              context,
              perro.key,
              perro.value,
              Colors.purple,
              Colors.white,
            );
          }),
          Divider(),
          ...cats.map((cat) {
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
          }),
        ],
      ),
    );
  }

  Widget crearTile(
    BuildContext context,
    String nombre,
    String imagen,
    Color colorTile,
    Color colorText,
  ) {
    final listTile = ListTile(
      leading: Image.asset(imagen, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(nombre),
      subtitle: Text('Un lindo perrito'),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      tileColor: colorTile,
      textColor: colorText,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text(nombre),
              content: Image.asset(
                imagen,
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(dialogContext);
                  },
                  child: const Text('Cerrar'),
                ),
              ],
            );
          },
        );
      },
    );
    final espacio = SizedBox(height: 6);

    return Column(children: [listTile, espacio]);
  }
}
