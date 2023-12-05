import 'package:flutter/material.dart';
import 'package:wasty_app/screens/signup.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.elliptical(230, 360),
                    bottomEnd: Radius.elliptical(700, 300))),
            child: Stack(
              children: [
                Positioned(
                    top: 100,
                    child: Image.asset(
                      "assets/images/Group 3482.png",
                      height: 250,
                    )),
                Positioned(
                    top: 230,
                    left: 50,
                    child: Image.asset(
                      "assets/images/Group 3479.png",
                      height: 170,
                    )),
                Positioned(
                    top: 130,
                    left: 30,
                    child: RichText(
                      text: TextSpan(
                        text: 'welcome to'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                        children: const <TextSpan>[
                          TextSpan(
                            text: '\n Wasty.',
                            style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            width: 260,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.circular(29)),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Signup()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25, color: Colors.green.shade400),
              ),
              width: 260,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green.shade400,
                  ),
                  borderRadius: BorderRadius.circular(29)),
            ),
          ),
        ],
      ),
    );
  }
}
