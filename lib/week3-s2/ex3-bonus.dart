import 'package:flutter/material.dart';

void main() => runApp(Exer3_Bonus());

class Exer3_Bonus extends StatelessWidget {
  const Exer3_Bonus({super.key});

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
            Card(
              color: Colors.blue[600]!,
              text: "FLUTTER",
              gradient: LinearGradient(
                colors: [Colors.blue[300]!, Colors.blue[900]!],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final String text;
  final LinearGradient? gradient;

  const Card({
    super.key,
    required this.color,
    required this.text,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: gradient == null ? color : null,
        gradient: gradient,
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
