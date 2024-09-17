import 'package:flutter/material.dart';
import './pages/calculadora.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculara",
      home:  CalApp(),
    );
  }
}
