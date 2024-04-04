import 'package:dev/packages/lib/src/Furniturecategory.dart';
import 'package:dev/screen/home/Categorieslabel.dart';
import 'package:dev/screen/home/setionTitle.dart';
import 'package:flutter/material.dart';

class DoctorCategories extends StatelessWidget {
  const DoctorCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sectiontitle(title: "Categories", seeall: "SeeAll", onpressed: () {}),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: Furniturecategory.values
              .take(4)
              .map((e) => Expanded(
                    child: Categories_label(
                      icon: e.icons,
                      label: e.name,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
