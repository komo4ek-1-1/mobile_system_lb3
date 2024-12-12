import 'package:flutter/material.dart';
import 'categories.dart';
import 'department_item.dart';

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return DepartmentItem(
          id: cat.id,
          name: cat.name,
          color: cat.color,
          icon: cat.icon,
        );
      }).toList(),
    );
  }
}
