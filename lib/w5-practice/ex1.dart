import 'package:flutter/material.dart';

void main() => runApp(SelectableButton());

class SelectableButton extends StatelessWidget {
  const SelectableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom buttons")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectatbleCard(),
              SizedBox(height: 20),
              SelectatbleCard(),
              SizedBox(height: 20),
              SelectatbleCard(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectatbleCard extends StatefulWidget {
  const SelectatbleCard({super.key});

  @override
  State<SelectatbleCard> createState() => _SelectatbleCardState();
}

class _SelectatbleCardState extends State<SelectatbleCard> {
  bool isSelected = false;
  void onSelect() => setState(() {
    isSelected = !isSelected;
  });

  // getters
  String get label => isSelected ? "Not Selected" : "Selected";
  Color get bgColors => isSelected ? Colors.blue[50]! : Colors.blue[600]!;
  Color get textColor => isSelected ? Colors.black : Colors.white;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: onSelect,
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(bgColors)),
        child: Center(
          child: isSelected
              ? Text(label, style: TextStyle(color: textColor))
              : Text(label, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
