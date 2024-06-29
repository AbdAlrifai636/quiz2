
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz2/pages/on_boarding/onboarding_page.dart';



class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(const OnboardingPage() );
    });
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.33,
              width: MediaQuery.of(context).size.height * 0.33,
              child: Image(
                image: AssetImage("assets/images/img.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen {
}
