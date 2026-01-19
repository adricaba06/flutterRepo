import 'package:flutter/material.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12)
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('50 + 50', style: TextStyle(fontSize:17, color: Colors.grey ),),
          Text('100', style: TextStyle(fontSize: 40, color: const Color.fromARGB(255, 56, 56, 56), fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}