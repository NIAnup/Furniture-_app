import 'package:dev/models/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.48,
      width: width * 0.95,
      child: GridView.builder(
        itemCount: Product.shop.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 0.80),
        itemBuilder: (context, index) {
          var product = Product.shop[index];
          return Column(
            children: [
              Container(
                height: height * 0.20,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(product.image),
              ),
              ListTile(
                title: Text(product.title,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    )),
                subtitle: Text(
                  product.price,
                  style: const TextStyle(
                      fontSize: 16.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
