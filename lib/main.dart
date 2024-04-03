import 'package:flutter/material.dart';
import './pages/loading.dart';
import './pages/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => Loading(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
