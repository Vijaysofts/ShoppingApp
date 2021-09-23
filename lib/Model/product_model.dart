class Product {
  final int id, price;
  final String title, description, image;

  Product({required this.id, required this.price, required this.title, required this.description, required this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Cooking Tools",
    image: "assets/images/cooking_tools.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 2,
    price: 68,
    title: "Lunch box",
    image: "assets/images/lunch_box.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 3,
    price: 39,
    title: "Pressure Cooker",
    image: "assets/images/cooker.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),

  Product(
    id: 4,
    price: 26,
    title: "Bowl Set",
    image: "assets/images/bowl.png",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 5,
    price: 50,
    title: "Electric Stove",
    image: "assets/images/stove.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 6,
    price: 70,
    title: "Coffee Maker",
    image: "assets/images/coffeemaker.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 7,
    price: 100,
    title: "Mixer Grinder",
    image: "assets/images/mixer.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 8,
    price: 110,
    title: "Digital Oven",
    image: "assets/images/oven.jpeg",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];