import 'package:flutter/material.dart';
import 'package:wasty_app/widget/button.dart';
import 'package:wasty_app/widget/fields.dart';

class Getstart extends StatelessWidget {
  const Getstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 35,
          ),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Login in your account",
                style: TextStyle(fontSize: 25),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Align(
            child: field(
                preIcon: Icon(
                  Icons.email,
                ),
                hint: "E-mail"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Align(
            child: field(
              icoon: Icon(Icons.visibility),
              hint: "Create Password",
              preIcon: Icon(Icons.lock),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Align(
            child: field(
              icoon: Icon(Icons.visibility),
              hint: "Repeat password",
              preIcon: Icon(Icons.lock),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 17.0),
          child: button(name: "join communtity", callback: () {}),
        )
      ],
    );
  }
}
