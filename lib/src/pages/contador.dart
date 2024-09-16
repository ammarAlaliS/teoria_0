import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador =25;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: const Color.fromARGB(255, 11, 76, 206),
      ),
      body: Center(
        child: Text(
          "Contador $_contador",
          style: const TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          setState(() {
             _contador++;
          });
        },
        child: const Icon(Icons.add), 
      ),
    );
  }
  }
