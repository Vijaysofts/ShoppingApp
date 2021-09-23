class ProductData {
  final int id, price;
  final String title, description, image;

  ProductData({required this.id, required this.price, required this.title, required this.description, required this.image});
}

// list of products
// for our demo
List<ProductData> data = [
  ProductData(
    id: 1,
    price: 25,
    title: "Fork Set",
    image: "assets/images/fork.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  ProductData(
    id: 2,
    price: 29,
    title: "Dish Set",
    image: "assets/images/dish.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  ProductData(
    id: 3,
    price: 39,
    title: "Jar Set",
    image: "assets/images/jar.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),

  ProductData(
    id: 4,
    price: 26,
    title: "pickle Jar",
    image: "assets/images/pickleJar.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  ProductData(
    id: 5,
    price: 50,
    title: "Coffee Mug",
    image: "assets/images/mug.webp",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  ProductData(
    id: 6,
    price: 70,
    title: "Coffee Maker",
    image: "assets/images/coffeemaker.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  ProductData(
    id: 7,
    price: 100,
    title: "Mixer Grinder",
    image: "assets/images/mixer.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  ProductData(
    id: 8,
    price: 110,
    title: "Digital Oven",
    image: "assets/images/oven.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];