import 'package:flutter/material.dart';
import 'widgets/students.dart';
import 'departments_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  TabsScreenState createState() => TabsScreenState(); // Змінив ім'я класу
}

class TabsScreenState extends State<TabsScreen> { // Зробив клас публічним
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'page': const DepartmentsScreen(),
      'title': 'Departments',
    },
    {
      'page': const StudentsScreen(),
      'title': 'Students',
    },
  ];

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndex]['title']),
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Departments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Students',
          ),
        ],
      ),
    );
  }
}
