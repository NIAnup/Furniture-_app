import 'package:dev/screen/home/home.dart';
import 'package:dev/screen/start/backgourndiamge.dart';
import 'package:flutter/material.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const backgourndimage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                        text: "The Furnture App",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "That Elevates Your Home",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ])),
              const Text(
                "We provide high-quality mid-century modern \n \r      furniture for design enthusiasts,\n crafted from sustainably sourced wood.",
                style: TextStyle(fontSize: 16, color: Colors.white60),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black38,
                      elevation: 0,
                      fixedSize: Size(280, 50)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  },
                  child: const Text(
                    "Let's Get Started",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextSpan(
                  text: "Sign In",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.green,
                      fontSize: 20,
                      color: Colors.green),
                )
              ]))
            ],
          ),
        )
      ],
    );
  }
}
