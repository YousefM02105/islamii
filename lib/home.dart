
import 'package:flutter/material.dart';
import 'appcolors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: const Center(
        child: Text(
          'Islami Home Screen',
          style: TextStyle(
            color: AppColors.gold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
