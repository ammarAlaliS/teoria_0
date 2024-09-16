import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contador",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: const Color.fromARGB(255, 183, 33, 33),
      ),
      body: Center(
        child: Text(
          "Contador $_contador",
          style: const TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementar,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }
}
