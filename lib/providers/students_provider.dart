import '../models/department.dart';

class Student {
  final String id;
  final String firstName;
  final String lastName;
  final Department department; // Посилання на факультет
  final int grade;

  Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.department,
    required this.grade,
  });
}
