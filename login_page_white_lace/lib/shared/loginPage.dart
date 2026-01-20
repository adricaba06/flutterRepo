import 'package:flutter/material.dart';

class InputElement extends StatelessWidget {
  const InputElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: Colors.white,
      ),

      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.search, size: 40, color: Colors.black),
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF909090),
                  ),
                ),
              ],
            ),
            SizedBox(),
            
          ],
        ),
      ),
    );
  }
}