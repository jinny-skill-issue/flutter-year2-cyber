import 'package:flutter/material.dart';

void main() => runApp(Exer3());

class Exer3 extends StatelessWidget {
  const Exer3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(color: Colors.blue[100]!, text: "OOP"),
            Card(color: Colors.blue[500]!, text: "DART"),
            Card(color: Colors.blue[600]!, text: "FLUTTER"),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final String text;
  const Card({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
