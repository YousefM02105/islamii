
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'appcolors.dart';
import 'home.dart';
import 'sebha.dart';
class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  PageViewModel createPage(
      String image,
      String title,
      String description,
      ) {
    return PageViewModel(
      title: title,
      body: description,
      image: Column(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 100,
          ),
          const SizedBox(height: 20),
          Image.asset(
            image,
            height: 350,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ],
      ),
      decoration: const PageDecoration(
        pageColor: AppColors.background,
        titleTextStyle: TextStyle(
          color: AppColors.gold,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(
          color: AppColors.gold,
          fontSize: 18,
        ),
        imageFlex: 3,

        bodyFlex: 1,
        contentMargin: EdgeInsets.all(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: AppColors.background,

      pages: [
        createPage(
          'assets/welcome.png',
          'Welcome To Islami',
          'Welcome to Islami App',
        ),

        createPage(
          'assets/kabba.png',
          'Welcome To Islami',
          'We Are Very Excited To Have You In Our Community',
        ),

        createPage(
          'assets/screen3.png',
          'Reading the Quran',
          'Read, and your Lord is the Most Generous',
        ),

        createPage(
          'assets/bearish.png',
          'bearish',
          'Praise the name of your Lord, the Most High',
        ),

        createPage(
          'assets/radio.png',
          'Holy Quran Radio',
          'You can listen to the Holy Quran Radio through the application for free and easily',
        ),
      ],

      showSkipButton: false,
      showBackButton: true,
      showNextButton: true,

      back: const Text(
        'Back',
        style: TextStyle(color: AppColors.gold),
      ),

      next: const Text(
        'Next',
        style: TextStyle(color: AppColors.gold),
      ),

      done: const Text(
        'Finish',
        style: TextStyle(color: AppColors.gold),
      ),

      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SebhaScreen(),
          ),
        );
      },

      dotsDecorator: DotsDecorator(
        activeColor: AppColors.gold,
        color: Colors.grey,
        size: const Size(8, 8),
        activeSize: const Size(20, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
