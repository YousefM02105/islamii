import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: const Center(
        child: Text(
          'Sebha Screen',
          style: TextStyle(
            color: Color(0xFFE7B96B),
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}