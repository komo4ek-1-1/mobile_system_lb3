import 'package:flutter/material.dart';
import '../models/student.dart';
import 'student_item.dart';
import 'NewStudent.dart';

class StudentsScreen extends StatefulWidget  {
  StudentsScreen({super.key});
@override
  State<StudentsScreen> createState() => _StudentsScreenState();
  // Список студентів
  final List<Student> students = [
    Student(
      firstName: 'Олег',
      lastName: 'Черешниченко',
      department: Department.it,
      grade: 90,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Дарина',
      lastName: 'Довгих',
      department: Department.finance,
      grade: 85,
      gender: Gender.female,
    ),
    Student(
      firstName: 'Кирило',
      lastName: 'Розбийголова',
      department: Department.law,
      grade: 100,
      gender: Gender.male,
    ),
    // Додайте більше студентів 
  ];



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Логіка для додавання студента, наприклад, відкриття форми
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: students.length,
        itemBuilder: (ctx, index) {
          return StudentItem(student: students[index]);
        },
        separatorBuilder: (ctx, index) => Divider(height: 1, color: Colors.grey[300]),
      ),
    );
  }
}



class _StudentsScreenState extends State<StudentsScreen> {
  final List<Student> students = [
    Student(
      firstName: 'John',
      lastName: 'Doe',
      department: Department.it,
      grade: 90,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Jane',
      lastName: 'Smith',
      department: Department.finance,
      grade: 85,
      gender: Gender.female,
    ),
  ];

  void _addStudent() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return NewStudent(
          onSave: (newStudent) {
            setState(() {
              students.add(newStudent);
            });
          },
        );
      },
    );
  }

  void _editStudent(Student student) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return NewStudent(
          student: student,
          onSave: (updatedStudent) {
            setState(() {
              final index = students.indexOf(student);
              students[index] = updatedStudent;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addStudent, // Викликаємо функцію додавання
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: students.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () => _editStudent(students[index]), // Редагуємо при натисканні
            child: StudentItem(student: students[index]),
          );
        },
        separatorBuilder: (ctx, index) => Divider(height: 1, color: Colors.grey[300]),
      ),
    );
  }
}
