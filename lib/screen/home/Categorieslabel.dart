import 'package:flutter/material.dart';

class Categories_label extends StatelessWidget {
  const Categories_label(
      {super.key, required this.icon, required this.label, this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[100],
            child: Icon(icon, color: Colors.grey[800], size: 30),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          )
        ],
      ),
    );
  }
}
