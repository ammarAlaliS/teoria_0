import 'package:flutter/material.dart';

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
          children: [
            SizedBox(
              height: 250.0,
              width: 350.0,
              child: 
              Image.asset("assets/quickcar.jpg",
                fit: BoxFit.fitWidth,
              )

              ,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }

}
