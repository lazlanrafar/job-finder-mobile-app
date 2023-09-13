import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';
import 'package:job_finder/widgets/button_icon.dart';
import 'package:job_finder/widgets/job_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget popularJob() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Job',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 16),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                JobCard(
                  logo: 'assets/logo_bwa.png',
                  jobTitle: 'Senior Graphic Designer',
                  companyName: 'BWA',
                  location: 'Jakarta, Id',
                  salary: '50K - 60K',
                  isActive: true,
                ),
                JobCard(
                  logo: 'assets/logo_bwa.png',
                  jobTitle: 'Senior Graphic Designer',
                  companyName: 'BWA',
                  location: 'Jakarta, Id',
                  salary: '50K - 60K',
                ),
                JobCard(
                  logo: 'assets/logo_bwa.png',
                  jobTitle: 'Senior Graphic Designer',
                  companyName: 'BWA',
                  location: 'Jakarta, Id',
                  salary: '50K - 60K',
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonIcon(
                  icon: 'assets/ic_menu.png',
                  onPressed: () => {},
                ),
                ButtonIcon(
                  icon: 'assets/ic_notification.png',
                  onPressed: () => {},
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
            ),
            const SizedBox(height: 20),
            popularJob()
          ],
        ),
      ),
    );
  }
}
