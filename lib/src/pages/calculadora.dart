import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:teoria_0/src/widgets/CalcButton.dart';

class CalApp extends StatefulWidget {
  const CalApp({super.key});

  @override
  State<CalApp> createState() => _CalAppState();
}

class _CalAppState extends State<CalApp> {
  String _history = "";
  String _expression = "";
  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    });
  }

  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  void evalute(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff283637),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  _history,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  _expression,
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 48,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Calbutton(
                  text: "AC",
                  callback: allClear,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "C",
                  callback: clear,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "%",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "/",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Calbutton(
                  text: "7",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "8",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "9",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "*",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Calbutton(
                  text: "4",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "5",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "6",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "-",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Calbutton(
                  text: "1",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "2",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "3",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "+",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Calbutton(
                  text: ".",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "0",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "00",
                  callback: numClick,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                ),
                Calbutton(
                  text: "=",
                  callback: evalute,
                  textSize: 20,
                  bgbuttonColor: 0xFFeb5b00,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
