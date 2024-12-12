import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Для використання Lato
import 'tabs_screen.dart'; // Підключення екрану TabsScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const TabsScreen(), // Встановлення TabsScreen як домашнього екрану
    );
  }
}
