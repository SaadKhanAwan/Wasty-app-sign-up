import 'package:flutter/material.dart';
import 'package:wasty_app/widget/button.dart';
import 'package:wasty_app/widget/fields.dart';

class SignView extends StatefulWidget {
  const SignView({super.key});

  @override
  State<SignView> createState() => _SignViewState();
}

class _SignViewState extends State<SignView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
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
          padding: const EdgeInsets.only(top: 12.0),
          child: Align(
            child: field(
                preIcon: Icon(
                  Icons.email,
                ),
                hint: "E-mail"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Align(
            child: field(
              icoon: Icon(Icons.visibility),
              hint: "Password",
              preIcon: Icon(Icons.lock),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "forget password?",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: button(name: "Login", callback: () {}),
        )
      ],
    );
  }
}
