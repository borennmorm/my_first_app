import 'package:flutter/material.dart';
import './pages/loading.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => const Loading(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
