import 'package:flutter/material.dart';


class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Fundamentos De Programacion",
    image: "assets/images/graphics.png",
    color: const Color(0xFF71b8ff),
    courses: 5,
  ),
  Product(
    id: 2,
    title: "P.O.",
    image: "assets/images/programming.png",
    color: const Color(0xFFff6374),
    courses: 8,
  ),
  Product(
    id: 3,
    title: "Estructura De Datos",
    image: "assets/images/finance.png",
    color: const Color(0xFFffaa5b),
    courses: 6,
  ),
  Product(
    id: 4,
    title: "Front-End",
    image: "assets/images/ux.png",
    color: const Color(0xFF9ba0fc),
    courses: 18,
  ),
];