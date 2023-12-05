import 'package:flutter/material.dart';

class field extends StatelessWidget {
  final String hint;
  final TextEditingController? contrl;
  final Icon? icoon;
  final type;
  final Icon? preIcon;
  field({required this.hint, this.icoon, this.contrl, this.type, this.preIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
          keyboardType: type,
          controller: contrl,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: icoon,
            prefixIcon: preIcon,
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          )),
    );
  }
}
