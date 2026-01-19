import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  final String num;
  final Color color;
  final double? tamanioX;
  const ButtonCalculator(this.num, this.color, {
    this.tamanioX = 80,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(Size(tamanioX!, 80)),
          backgroundColor: WidgetStateProperty.all(color)
        ),
        onPressed: (){},
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(num, style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)),
        )),
    );
  }
}