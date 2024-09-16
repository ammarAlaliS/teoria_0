import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 11, 76, 206),
      ),
      body: Center(
        child: Text(
          "Contador $contador", // Interpolación correcta de la variable contador
          style: const TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          contador++
        },
        child: const Icon(Icons.add), // Puedes poner el icono que prefieras
      ),
    );
  }
}
