import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool switchValue = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 5', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [entradaNombre(), entradaSwitch(), entradaSlider()],
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
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
}
