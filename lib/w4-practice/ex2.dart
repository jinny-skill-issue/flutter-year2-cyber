import 'package:flutter/material.dart';

enum ButtonType {
  primaryButton(Colors.blue),
  secondaryButton(Colors.green),
  disabledButton(Colors.grey);

  const ButtonType(this.color);

  final Color color;
}

enum IconPositoin { left, right }

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Exercise2()));

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Custom Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: "Submit",
              icon: Icons.check,
              iconPositoin: IconPositoin.left,
              buttonType: ButtonType.primaryButton,
            ),
            CustomButton(
              label: "Time",
              icon: Icons.lock_clock,
              iconPositoin: IconPositoin.right,
              buttonType: ButtonType.secondaryButton,
            ),
            CustomButton(
              label: "test",
              icon: Icons.text_snippet,
              iconPositoin: IconPositoin.right,
              buttonType: ButtonType.disabledButton,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPositoin? iconPositoin;
  final ButtonType? buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    required this.iconPositoin,
    required this.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: buttonType?.color,
      ),
      child: TextButton(
        onPressed: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: iconPositoin == IconPositoin.left
              ? [Icon(icon), Text(label)]
              : [Text(label), Icon(icon)],
        ),
      ),
    );
  }
}
