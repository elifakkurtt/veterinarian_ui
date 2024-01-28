import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:veterinarian_ui/constans/colors.dart';
import 'package:veterinarian_ui/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Get.off(() => const HomePage()); 
      },
    );

    return Scaffold(
      backgroundColor: introPageColor,
      body: Center(
        child: Lottie.asset(
          'assets/json/vet.json',
        ),
      ),
    );
  }
}
