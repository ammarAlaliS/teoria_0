import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calbutton extends StatelessWidget {
  final Function callback;
  final String text;
  final double textSize;
  final int bgbuttonColor;
  const Calbutton({
    super.key,
    required this.callback,
    required this.text,
    this.textSize = 28,
    this.bgbuttonColor = 0xFFeb5b00,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
            onPressed: () {
              callback(text);
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(bgbuttonColor),
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20)),
            child: Text(
              text,
              style: TextStyle(fontSize: textSize),
            )),
      ),
    );
  }
}
