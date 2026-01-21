import 'package:flutter/material.dart';

class TextinputPers extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool obs;



  const TextinputPers(
    this.icon,
    this.obs,
    this.text,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(icon),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
          
        ),
        
        hintText: text,
      ),
       obscureText: obs,

      onSaved: (String? value) {
        
       
      },
      validator: (String? value) {
        return (value != null && value.contains('@'))
            ? 'Do not use the @ char.'
            : null;
      },
    );
  }
}
