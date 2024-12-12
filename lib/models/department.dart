import 'package:flutter/material.dart';
import '../models/student.dart';

class Department {
  final String id; // Унікальний ідентифікатор факультету
  final String name; // Назва факультету
  final Color color; // Колір для відображення
  final IconData icon; // Іконка факультету
  final List<Student> enrolledStudents; // Список студентів, які належать до факультету

  Department({
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
    this.enrolledStudents = const [],
  });
}
