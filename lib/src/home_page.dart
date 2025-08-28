import 'package:flutter/material.dart';
import 'package:introducao_flutter_gdg/src/row/row_page.dart';
import 'package:introducao_flutter_gdg/src/scaffold/scaffold_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introdução Flutter GDG'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScaffoldPage(),
                  ),
                );
              },
              child: const Text('Scaffold'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
              },
              child: const Text('Row'),
            ),
          ],
        ),
      ),
    );
  }
}
