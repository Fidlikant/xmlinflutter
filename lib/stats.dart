import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stasts from your data'),
        backgroundColor: const Color.fromARGB(255, 41, 166, 228)
      ),
      body: Center(
        child: Text(
          'This is a new screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}