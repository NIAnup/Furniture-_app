import 'package:flutter/material.dart';

class Sectiontitle extends StatelessWidget {
  const Sectiontitle(
      {super.key,
      required this.title,
      required this.seeall,
      required this.onpressed});
  final String title;
  final String seeall;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 17, color: Colors.black),
          textDirection: TextDirection.ltr,
        ),
        TextButton(
            onPressed: onpressed,
            child: Text(
              seeall,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            )),
      ],
    );
  }
}
