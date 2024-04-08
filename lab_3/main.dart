import 'package:ex2/nav1/named_route.dart';
import 'package:ex2/nav1/navigation1.dart';
import 'package:ex2/nav_2/exercise1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Navigation Demo",
      home: Nav1App(),
    );
  }
}
