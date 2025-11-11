import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomeScreen());
  }
}
