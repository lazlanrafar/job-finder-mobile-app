import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';
import 'package:job_finder/widgets/button.dart';
import 'package:job_finder/widgets/button_icon.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIcon(
                    icon: 'assets/ic_arrow_left.png',
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'Job detail',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  ),
                  ButtonIcon(
                    icon: 'assets/ic_bookmark.png',
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/logo_bwa.png',
                            width: 90,
                            height: 90,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Senior UI Designer',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          'Jakarta, Indonesia',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                  border: Border.all(
                                    color: blueColor,
                                    width: 1,
                                  )),
                              child: Text(
                                "Remote",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: blueColor,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About this Job',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Currently we are in need of several UI Designers to complete our designer shortage, we hope that with this we can improve the quality of our user interface to customers, because it is very important for',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Job Responsibilities',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '1. At least have 3 years of experience',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '2. Able to work in a team or individually',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '3. Have a good passion in UI Design',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(height: 50),
                        Button(text: 'Apply Now', onPressed: () => {})
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
