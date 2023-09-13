import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () => {},
                      icon: Image.asset(
                        'assets/ic_menu.png',
                        width: 24,
                        height: 24,
                      ),
                      tooltip: 'Menu',
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      )),
                  IconButton(
                    onPressed: () => {},
                    icon: Image.asset(
                      'assets/ic_notification.png',
                      width: 24,
                      height: 24,
                    ),
                    tooltip: 'Notification',
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Hello Yeeds!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: primaryColor,
                ),
              ),
              Text(
                "Find Your Dream Job",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
