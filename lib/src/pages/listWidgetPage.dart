import 'package:flutter/material.dart';

class Listwidgetpage extends StatefulWidget {
  const Listwidgetpage({super.key});

  @override
  State<Listwidgetpage> createState() => _ListwidgetpageState();
}

class _ListwidgetpageState extends State<Listwidgetpage> {
  final List<String> nombres = <String>[
    "Numero 1",
    "Numero 2",
    "Numer0 3"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: ListView.builder(
        itemCount: nombres.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 60.0,
            child: Center(
              child: Text("Text ${nombres[index]}"),
            ),
          );
        },
      ),
    );
  }
}