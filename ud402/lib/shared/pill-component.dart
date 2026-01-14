import 'package:flutter/material.dart';

class PillForScroll extends StatelessWidget {
  const PillForScroll({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.surname,
  });

  final String imageUrl;
  final String name;
  final String surname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 550,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),

              borderRadius: BorderRadius.all(Radius.circular(200)),
            ),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'AvantGarde',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),

              Text(
                surname,
                style: TextStyle(fontFamily: 'AvantGarde', fontSize: 24.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
