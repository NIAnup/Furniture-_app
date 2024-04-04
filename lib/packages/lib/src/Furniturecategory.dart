import "package:flutter/material.dart";

enum Furniturecategory {
  s(
    name: "Sofa",
    icons: Icons.chair,
  ),
  chair(
    name: 'Chair',
    icons: Icons.chair_alt_rounded,
  ),
  lamp(
    name: 'Lamp',
    icons: Icons.light_rounded,
  ),
  cupboard(
    name: "Bed",
    icons: Icons.king_bed_rounded,
  );

  final String name;
  final IconData icons;

  const Furniturecategory({
    required this.name,
    required this.icons,
  });
}
