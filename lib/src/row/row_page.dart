import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  // 1. Row
  // 2. Container 200x200
  // 3. Expanded or Flexible
  // 4. SingleChildScrollView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Exemplo'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
