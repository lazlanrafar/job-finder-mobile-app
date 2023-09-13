import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';

class JobCard extends StatefulWidget {
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
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/job-detail'),
      child: Container(
          width: 270,
          padding: const EdgeInsets.all(16),
          margin: EdgeInsets.only(right: defaultMargin),
          decoration: BoxDecoration(
            color: widget.isActive ? blueColor : Colors.white,
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
                      color: widget.isActive ? Colors.white : grayColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      widget.logo,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Text(
                    widget.salary,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: widget.isActive ? Colors.white : primaryColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                widget.jobTitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: widget.isActive ? Colors.white : primaryColor,
                ),
              ),
              Text(
                "${widget.companyName} • ${widget.location}",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: widget.isActive ? Colors.white : primaryColor,
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
