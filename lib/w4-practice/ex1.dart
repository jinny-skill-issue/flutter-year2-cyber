import 'package:flutter/material.dart';


void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Exercise1()));

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Hobbies")),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            // travel
            Expanded(
              child: Container(
              
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.travel_explore, color: Colors.white),
                    SizedBox(width: 20),
                    Text("Travelling", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            // skating
            Expanded(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Icon(Icons.skateboarding, color: Colors.white),
                    SizedBox(width: 20),
                    Text("Skating", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
