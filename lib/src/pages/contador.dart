import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Importa el paquete para SVG

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Images",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: const Color.fromARGB(255, 183, 33, 33),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250.0,
              width: 500,
              child: Image.asset(
                "assets/quickcar.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 250.0,
              width: 500,
              child: Image.network(
                "https://api.reliasoftware.com/uploads/what_is_flutter_fcb6c7a4b8.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 250.0,
              width: 500,
              child: SvgPicture.asset(
                "assets/t.svg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
