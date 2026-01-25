import 'package:flutter/material.dart';

class MeetingElements extends StatelessWidget {
  final String title;
  final String dateNum;
  final String dateMonth;
  final String hours;
  final String type;
  final String link;
  final bool done;

  const MeetingElements(
    this.title,
    this.dateNum,
    this.dateMonth,
    this.hours,
    this.type,
    this.link,
    this.done, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Row(
              children: [
                Container(
                  width: 75,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text(
                          dateMonth,
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                        Text(
                          dateNum,
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFdff5ff),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.timer_sharp, color: Color(0xFF2f789f)),
                              SizedBox(width: 8),
                              Text(
                                hours,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF2f789f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 14,
            right: 14,
            child: Image(image: NetworkImage(link), width: 30, height: 30),
          ),
        ],
      ),
    );
  }
}
