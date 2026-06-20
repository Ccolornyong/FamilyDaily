import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          home: Scaffold( // 상중하로 나눔
            appBar: AppBar(), // 상단
            body: Row(), // 중단
            bottomNavigationBar: Row(), // 하단
          )
      );
    }
  }