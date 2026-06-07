//part 3
import 'package:flutter/material.dart';

void main() => runApp(MyFavourite());

class MyFavourite extends StatelessWidget {
  const MyFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            MyFavouriteCard(),
            MyFavouriteCard(),
            MyFavouriteCard(),
            MyFavouriteCard(),
            MyFavouriteCard(),
          ],
        ),
      ),
    );
  }
}

class MyFavouriteCard extends StatefulWidget {
  const MyFavouriteCard({super.key});

  @override
  State<MyFavouriteCard> createState() => _MyFavouriteCardState();
}

class _MyFavouriteCardState extends State<MyFavouriteCard> {
  bool isFavourite = false;
  void onFavourite() => setState(() {
    isFavourite = !isFavourite;
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'title',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.0),
                Text('description'),
              ],
            ),
          ),
          IconButton(
            onPressed: onFavourite,
            icon: isFavourite
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite_border, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
