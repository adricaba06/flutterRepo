import 'package:flutter/material.dart';

class MyBadget extends StatelessWidget {
  const MyBadget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 51, 51, 51),
        borderRadius: BorderRadius.circular(40)
      ),
      width: 160,
      height: 35,
      child: Padding(
        padding: EdgeInsets.all(8),
        
        child: Text('1USD = 7,2493 CNY',textAlign: TextAlign.center ,style: TextStyle(color: Colors.white),)),
    );
  }
}