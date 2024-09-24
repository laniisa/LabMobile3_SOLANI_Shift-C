import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resto App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // Hapus textTheme untuk menghindari kesalahan
      ),
      home: const LoginPage(),
    );
  }
}
