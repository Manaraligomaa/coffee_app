import 'package:flutter/foundation.dart';

class Product {
  int id, price;
  String title, subtitle, description, image, ingredients;

  Product({
    @required this.id,
    @required this.price,
    @required this.title,
    @required this.subtitle,
    @required this.description,
    @required this.image,
    @required this.ingredients,
  });
}

List<Product> products = [
  Product(
      id: 1,
      price: 37,
      title: "Caramel Macchiato",
      subtitle: "Coffee is a beverage that puts one to sleep when not drank",
      description:
          " espresso coffee topped with frothed hot milk or cream and often flavored with cinnamon",
      image: "images/coffe1.png",
      ingredients:
          "Our signature blend espresso with steamed milk for a smooth and creamy coffee."),
  Product(
      id: 2,
      price: 42,
      title: "Caramel Cold Drink",
      subtitle: "I have measured out my life with coffee spoons",
      description:
          "Caramel Cappuccino recipe features whole steamed milk, bold espresso made from sustainably-sourced beans, fluffy foam, and buttery caramel flavor.",
      image: "images/coffe2.png",
      ingredients:
          "Made with our aromatic Espresso, frothy milk and decadent chocolate dusting"),
  Product(
      id: 3,
      price: 45,
      title: "Iced Coffe Mocha",
      subtitle:
          "Good communication is just as stimulating as black coffee, and just as hard to sleep after",
      description:
          "cream that is legally required to contain at least 18 percent but less than 30 percent of butterfat ",
      image: "images/coffe3.png",
      ingredients:
          "A delicious combination of Espresso and velvety milk, signed off with a perfect florette."),
  Product(
      id: 4,
      price: 22,
      title: "Caramelized Pecan Latte",
      subtitle: "I never drink coffee at lunch",
      description:
          "coffee brewed by forcing hot water through finely ground darkly roasted coffee beans",
      image: "images/coffe4.png",
      ingredients:
          "A short but intense espresso extracted over water, providing a smooth silky bold coffee."),
  Product(
      id: 5,
      price: 40,
      title: "Toffee Nut Latte",
      subtitle: " mathematician is a device for turning coffee into theorems.",
      description:
          "The flat white coffee is an espresso-based coffee drink accompanied with steamed milk and microfoam.",
      image: "images/coffe5.png",
      ingredients:
          "Our signature Espresso softened with hot water. Drink it straight up or add a splash of milk."),
  Product(
      id: 6,
      price: 38,
      title: "Cappuchino",
      subtitle:
          "Like everyone else who makes the mistake of getting older, I begin each day with coffee and obituaries.",
      description:
          "An iced latte is simply milk mixed into espresso with ice in the glass.",
      image: "images/coffe6.png",
      ingredients:
          "Expertly steamed chocolate milk blended with espresso for a caffeinated chocolate treat."),
];
