import 'package:flutter/material.dart';

void main() => runApp(Exer4());

class Exer4 extends StatelessWidget {
  const Exer4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[700],
          title: Center(
            child: Text(
              "Welcome!",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyCard(
                width: 1000,
                text: "My Hobbies",
                padding: 20,
                color: Colors.black,
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyCard(
                    width: 150,
                    text: "Soccer",
                    padding: 50,
                    color: Colors.orange[400]!,
                  ),
                  SizedBox(width: 100),
                  MyCard(
                    width: 150,
                    text: "Flutter",
                    padding: 50,
                    color: Colors.orange[900]!,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(20),
          color: Colors.orange[700],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [CircleCard(), CircleCard(), CircleCard()],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final double width;
  final double padding;
  final String text;
  final Color color;

  const MyCard({
    super.key,
    required this.width,
    required this.text,
    required this.padding,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(padding),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}

class CircleCard extends StatelessWidget {
  const CircleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
