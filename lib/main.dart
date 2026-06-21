import 'package:flutter/material.dart';
import 'login01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 세미콜론 필요

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login01(),
    );
  }
}