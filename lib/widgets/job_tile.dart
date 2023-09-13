import 'package:flutter/material.dart';
import 'package:job_finder/shared/theme_shared.dart';

class JobTile extends StatefulWidget {
  final String logo, jobTitle, companyName, location, type, salary;

  const JobTile({
    super.key,
    required this.logo,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.type,
    required this.salary,
  });

  @override
  State<JobTile> createState() => _JobTileState();
}

class _JobTileState extends State<JobTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/job-detail'),
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: grayColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(3),
                  child: Image.asset(
                    widget.logo,
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.companyName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      widget.type,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  widget.salary,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: primaryColor,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.jobTitle,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
            Text(
              widget.location,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
