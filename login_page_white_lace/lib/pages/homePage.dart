import 'package:flutter/material.dart';

import '../shared/loginPage.dart';
import '../shared/textInput.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(23), topLeft: Radius.circular(23)),
                    
                    color: Color(0XFFEEF2F1)
                   
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      
                      children: [
                        TextinputPers(Icons.email_outlined, false, "Email"),
                        SizedBox(height: 12),
                        TextinputPers(Icons.lock_outlined, true, "Password"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
