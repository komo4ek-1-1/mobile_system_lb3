import 'package:flutter/material.dart';
import '../models/student.dart';

class Department {
  final String id;
  final String name;
  final Color color;
  final IconData icon;
  final List<Student> enrolledStudents; // Список студентів, що належать до факультету

  Department({
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
    this.enrolledStudents = const [],
  });
}
