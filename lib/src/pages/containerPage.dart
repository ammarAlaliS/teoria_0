import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenedor"),
      ),
      body: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 128, 14, 14),
        ),
        child: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            // padding: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.all(10.0),
            // padding: EdgeInsets.only(top: 20.0, bottom: 20.0),

            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 55, 233, 141),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                width: 200.0,
                height: 200.0,
                alignment: Alignment.center,
                child: Text("Hola desde el contenedor")),
          ),
        ),
      ),
    );
  }
}
