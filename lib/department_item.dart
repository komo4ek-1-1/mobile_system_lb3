import 'package:flutter/material.dart';

class DepartmentItem extends StatelessWidget {
  final String id;
  final String name;
  final Color color;
  final IconData icon;

  const DepartmentItem({
    super.key,
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Обробка натискання (наприклад, навігація на екран факультету)
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: color.withAlpha(179), // 0.7 * 255 = 179
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withAlpha(179), // 0.7 * 255 = 179
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              name,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
