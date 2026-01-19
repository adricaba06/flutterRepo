import 'package:flutter/material.dart';

class ActionButtonCalc extends StatelessWidget {
  final IconData icon;

  const ActionButtonCalc(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(Size(80, 80)),
          backgroundColor: WidgetStateProperty.all(
            const Color.fromARGB(255, 207, 207, 207),
          ),
        ),
        onPressed: () {},

        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
