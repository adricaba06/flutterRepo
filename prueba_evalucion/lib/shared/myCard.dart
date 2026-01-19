import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final Image pic;
  final String name;


  const Mycard(
    this.name, this.pic,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(
            
            children: [
              Text('140.00', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                
              ),),
              Text('Balance: €150.56', textAlign: TextAlign.left, style: TextStyle(color: Colors.grey),)
            ],
          ),
          SizedBox(width: 50,),
           Container(
            width: 115,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: const Color.fromARGB(127, 158, 158, 158))
            ),

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 30,
                    height: 30,
                    child: Image(image: pic.image),
                  ),
                ),
                Text(name, style: TextStyle(
                  fontSize: 15,
                ),),
                SizedBox(width: 10,),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
          )],
        ),
      ),
    );
  }
}