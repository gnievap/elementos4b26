import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool switchValue = false;
  double sliderValue = 0.0;
  int radioSelected = 0;
  final TextEditingController nombreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 5', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          entradaNombre(),
          entradaSwitch(),
          entradaSlider(),
          entradaRadio(),
          ElevatedButton(onPressed: null, child: const Text('Guardar datos')),
        ],
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
      obscuringCharacter: '*',
      obscureText: true,
      maxLength: 5,
      decoration: InputDecoration(
        labelText: 'Nombre',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      controller: nombreController,
      onChanged: (value) {
        setState(() {
          // Aquí puede colocarse la acción al cambiar el texto
          print('Valor del nombre: $value');
        });
      },
    );
  }

  Row entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('¿Te gusta Flutter?', style: TextStyle(fontSize: 18)),
        Switch(
          value: switchValue,
          onChanged: (value) {
            setState(() {
              // Aquí actualizamos el estado del switch
              switchValue = value;
              // Aquí puede colocarse la acción al cambiar el switch
              print('Valor del switch: $switchValue');
            });
          },
        ),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Indica qué tanto te gusta Flutter'),
        Slider(
          min: 0.0,
          max: 10.0,
          value: sliderValue,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value) {
            setState(() {
              sliderValue = value;
              // Aquí puede colocarse la acción al cambiar el slider
              print('Valor del slider: $sliderValue');
            });
          },
        ),
      ],
    );
  }

  Column entradaRadio() {
    final ListTile kotlinRadio = ListTile(
      title: const Text('Kotlin'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 1,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print("Selección del botón radio: $radioSelected");
            });
          },
        ),
      ),
    );

    final ListTile flutterRadio = ListTile(
      title: const Text('Flutter'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 2,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print("Selección del botón radio: $radioSelected");
            });
          },
        ),
      ),
    );

    final ListTile reactRadio = ListTile(
      title: const Text('React Native'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 3,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print("Selección del botón radio: $radioSelected");
            });
          },
        ),
      ),
    );

    return Column(
      children: [
        Text('¿Qué prefieres para desarrollo móvil?'),
        kotlinRadio,
        flutterRadio,
        reactRadio,
      ],
    );
  }
}
