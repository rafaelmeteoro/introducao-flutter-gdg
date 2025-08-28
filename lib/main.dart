import 'package:flutter/material.dart';
import 'package:introducao_flutter_gdg/src/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Introdução Flutter GDG',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
