import 'package:arascic_exam_app/screens/auth_screen.dart';
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
    return const MaterialApp(
      title: 'Ispitna aplikacija A.Raščić',
      home: AuthScreen()
    );
  }
}
