import 'package:app_trips/shared/search_element.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Vanessa',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Welcome to TripGlide',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF909090),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://avatarfiles.alphacoders.com/720/thumb-1920-72033.jpg',
                    ),
                  ),
                ],
              ),
              SearchElement(),
            ],
          ),
        ),
      ),
    );
  }
}
