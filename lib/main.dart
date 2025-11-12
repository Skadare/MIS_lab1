import 'package:flutter/material.dart';
import 'package:lab1/screens/HomePage.dart';
import 'package:lab1/screens/detailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan.shade50),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(title: 'Распоред за испити - 226013'),
        "/details": (context) => const DetailPage(),
      },
    );
  }
}

