import 'package:dev/screen/home/doctorcategories.dart';
import 'package:dev/screen/home/product_list.dart';
import 'package:flutter/material.dart';

late final Size mq;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<OutlinedButton> list = [
    OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: const CircleBorder(side: BorderSide(color: Colors.black))),
        onPressed: () {},
        child: const Text("All"))
  ];
  List<IconButton> item = [
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.home_filled,
          color: Colors.white,
        )),
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        )),
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_border_outlined,
          color: Colors.white,
        )),
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.person_outlined,
          color: Colors.white,
        )),
  ];
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: Colors.white),
          )
        ],
        backgroundColor: Colors.white10,
        toolbarHeight: 140,
        title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              Text(
                "Noida, UttarPradesh",
                style: TextStyle(
                    fontFamily: AutofillHints.location,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )
            ]),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.05),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "Search Furniture",
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(4.0),
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Icon(
                        Icons.filter_alt,
                        color: Colors.white,
                      ),
                    )),
              ),
            )),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 9),
        decoration: const BoxDecoration(
            backgroundBlendMode: BlendMode.clear,
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: item.toList()),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            const DoctorCategories(),
            const SizedBox(height: 23),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Flash Sale",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ProductList()
          ]),
        ),
      ),
    );
  }
}
