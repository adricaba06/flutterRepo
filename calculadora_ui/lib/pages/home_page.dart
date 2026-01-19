import 'package:calculadora_ui/shared/screen.dart';
import 'package:flutter/material.dart';

import '../shared/actionButton.dart';
import '../shared/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ScreenWidget(),
            SizedBox(height: 30,),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        ActionButtonCalc(Icons.backspace_outlined),
                        ActionButtonCalc(Icons.delete),
                        ActionButtonCalc(Icons.percent),
                      ],
                    ),
                    Row(
                      children: [
                        ButtonCalculator('7', Colors.white),
                        ButtonCalculator('8', Colors.white),
                        ButtonCalculator('9', Colors.white),
                      ],
                    ),
                    Row(
                      children: [
                        ButtonCalculator('4', Colors.white),
                        ButtonCalculator('5', Colors.white),
                        ButtonCalculator('6', Colors.white),
                      ],
                    ),
                    Row(
                      children: [
                        ButtonCalculator('1', Colors.white),
                        ButtonCalculator('2', Colors.white),
                        ButtonCalculator('3', Colors.white),
                      ],
                    ),
                    Row(
                      children: [
                        ButtonCalculator('0', Colors.white,tamanioX: 170.0),
                        
                        ButtonCalculator('.', Colors.white),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    ButtonCalculator(
                      '÷',
                      const Color.fromARGB(255, 255, 154, 1),
                    ),
                    ButtonCalculator(
                      'x',
                      const Color.fromARGB(255, 255, 154, 1),
                    ),
                    ButtonCalculator(
                      '-',
                      const Color.fromARGB(255, 255, 154, 1),
                    ),
                    ButtonCalculator(
                      '+',
                      const Color.fromARGB(255, 255, 154, 1),
                    ),
                    ButtonCalculator(
                      '=',
                      const Color.fromARGB(255, 255, 154, 1),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
