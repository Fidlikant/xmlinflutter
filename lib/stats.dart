import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stasts from your data'),
        backgroundColor: const Color.fromARGB(255, 41, 166, 228)
      ),
      body: const Center(
        child: Text(
          'This is a new screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}