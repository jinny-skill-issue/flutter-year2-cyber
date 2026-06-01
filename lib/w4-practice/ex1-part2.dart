import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.color = const Color.fromARGB(255, 232, 85, 159),
  });

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Icon(icon, color: Colors.white),
            ),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Hobbies", style: TextStyle(color: Colors.black)),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title: "Travelling",
                icon: Icons.travel_explore,
                color: Colors.green,
              ),
              HobbyCard(
                title: "Skating",
                icon: Icons.skateboarding,
                color: const Color.fromARGB(255, 117, 192, 229),
              ),
              HobbyCard(title: "Music", icon: Icons.music_note),
            ],
          ),
        ),
      ),
    ),
  );
}
