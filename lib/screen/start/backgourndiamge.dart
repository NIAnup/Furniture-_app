// Backgroud image Class  connect  to startpage class
import 'package:flutter/material.dart';

class backgourndimage extends StatelessWidget {
  const backgourndimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                fit: BoxFit.fill,
                image: AssetImage("assets/images/startpage.jpg"))),
      ),
    );
  }
}
