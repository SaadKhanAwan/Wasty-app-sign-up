import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String name;
  final Icon? B_icon;
  final VoidCallback callback;
  button({required this.name, this.B_icon, required this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade400,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
