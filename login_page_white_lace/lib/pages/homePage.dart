import 'package:flutter/material.dart';

import '../shared/loginPage.dart';
import '../shared/textInput.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(12), child: TextinputPers()),
          ],
        ),
      ),
    );
  }
}
