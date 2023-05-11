import 'package:flutter/material.dart';

class Product {
  final String title;
  final int id;
  final Color color;
  Product({
    required this.title,

    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Information Technology",
    color: Color(0xFF71b8ff),

  ),
  Product(
    id: 2,
    title: "Electronics and Communication Engineering",
    color: Color(0xFFff6374),

  ),
  Product(
    id: 3,
    title: "Civil Engineering",
    color: Color(0xFFffaa5b),

  ),
  Product(
    id: 4,
    title: "Electrical and Electronics Engineering",
    color: Color(0xFF9ba0fc),

  ),
];
