import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final Color color;
  final IconData icon;

  const Category({
    required this.id,
    required this.name,
    this.color = Colors.blue, // Колір за замовчуванням
    required this.icon,
  });
}
