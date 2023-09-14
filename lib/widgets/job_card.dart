import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';

class JobCard extends StatelessWidget {
  final String logo, jobTitle, companyName, location, salary;
  final bool isActive;

  const JobCard({
    super.key,
    required this.logo,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.salary,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/job-detail'),
      child: Container(
          width: 270,
          padding: const EdgeInsets.all(16),
          margin: EdgeInsets.only(right: defaultMargin),
          decoration: BoxDecoration(
            color: isActive ? blueColor : Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: isActive ? Colors.white : grayColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      logo,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Text(
                    salary,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: isActive ? Colors.white : primaryColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                jobTitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: isActive ? Colors.white : primaryColor,
                ),
              ),
              Text(
                "$companyName • $location",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: isActive ? Colors.white : primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Column(
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
          )),
    );
  }
}
