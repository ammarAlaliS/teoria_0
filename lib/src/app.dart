import 'package:flutter/material.dart';
import './pages/pagina1.dart';
import './pages/pagina2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegacion",
      initialRoute: '/pagina1',
      routes: {
        '/pagina1': (BuildContext context) => const Pagina1(),
        '/pagina2': (BuildContext context) => const Pagina2(),
      },
    );
  }
}
