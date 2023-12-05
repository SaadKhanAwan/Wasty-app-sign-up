import 'package:flutter/material.dart';
import 'package:wasty_app/screens/tabview/getstartview.dart';
import 'package:wasty_app/screens/tabview/sign.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TabBar get _tabBar => TabBar(
        labelColor: Colors.green.shade400,
        unselectedLabelColor: Colors.grey.shade400,
        indicatorColor: Colors.green.shade400,
        tabs: [
          Tab(
            text: "Sign up",
          ),
          Tab(
            text: "Get Started",
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 170,
          backgroundColor: Colors.green.shade400,
          title: RichText(
            text: TextSpan(
              text: 'Wasty .'.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white),
              children: const <TextSpan>[
                TextSpan(
                  text: '\n think for nature.',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
                color: Colors.white, //<-- SEE HERE
                child: _tabBar),
          ),
        ),
        body: TabBarView(
          children: [SignView(), Getstart()],
        ),
      ),
    );
  }
}
