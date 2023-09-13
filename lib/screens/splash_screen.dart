import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';
import 'package:job_finder/widgets/button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the Job You've\nAlways Dreamed of",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: primaryColor),
            ),
            const SizedBox(height: 8),
            Text(
              "One of the places where you will find the right job with your field of interest, and you just have to wait for the manager to call you to hire",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: primaryColor),
            ),
            const SizedBox(height: 73),
            Button(text: 'Get Started', onPressed: () => {})
          ],
        ),
      ),
    ));
  }
}
