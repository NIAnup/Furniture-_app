class Product {
  final String title;
  final String price;
  final String image;

  Product({required this.title, required this.price, required this.image});

  static List<Product> shop = [
    Product(
        title: "Yarmi-lounge chair",
        price: "\$120",
        image: "assets/productimage/image_one.png"),
    Product(
        title: "Slipper chair",
        price: "\$100",
        image: "assets/productimage/image_two.png"),
    Product(
        title: "Modern Chair",
        price: "\$109",
        image: "assets/productimage/image_three.png"),
    Product(
        title: "Carnival chair",
        price: "\$90",
        image: "assets/productimage/image_four.png"),
    Product(
        title: "Sofa",
        price: "\$149",
        image: "assets/productimage/image_five.png"),
    Product(
        title: "Pink sofa",
        price: "\$190",
        image: "assets/productimage/image_six.png"),
  ];
}
