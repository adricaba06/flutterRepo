import 'package:flutter/material.dart';

class ButtonTransf extends StatelessWidget {
  final String num;

  const ButtonTransf(this.num, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, bottom: 5),
    
      child: ElevatedButton(onPressed: (){},
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
        backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 255, 255, 255)),
        fixedSize: WidgetStatePropertyAll(Size(120, 80)),
      
      ),
       child: Text(num, style: TextStyle(
        fontSize: 40, color: Colors.black
       ),)),
    );
  }
}