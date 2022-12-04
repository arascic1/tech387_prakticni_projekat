import 'package:arascic_exam_app/router.dart';
import 'package:arascic_exam_app/screens/auth_screen.dart';
import 'package:arascic_exam_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

// AHMED RAŠČIĆ
// AHMED RAŠČIĆ
// AHMED RAŠČIĆ
// AHMED RAŠČIĆ
// AHMED RAŠČIĆ
// AHMED RAŠČIĆ

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ispitna aplikacija A.Raščić',
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const HomeScreen()
    );
  }
}
