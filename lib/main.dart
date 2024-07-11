import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Sesuaikan dengan nama file yang tepat
// Hilangkan impor yang tidak diperlukan

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jaga Jalan',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomeScreen(),
    );
  }
}