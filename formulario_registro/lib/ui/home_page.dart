import 'package:flutter/material.dart';
import 'package:formulario_registro/ui/button_sheet_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,

      body: Column(children: [SizedBox(height: 200), BottomSheetComponnet()]),
    );
  }
}
