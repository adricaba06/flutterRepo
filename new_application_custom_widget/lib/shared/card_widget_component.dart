import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.subText,
    required this.bgImage,

    });

    final Text text;
    final Icon icon;
    final Text subText;
    final Text url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 70,
      child: Container(
        Image.network(url);
      ),

    );
  }
}