import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  const RecentJobCard({super.key, required this.companyName, required this.jobTitle, required this.logoImagePath, required this.hourlyRate});

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(6),
                color: Colors.grey[300],
                child: Image.asset(logoImagePath),
              ),
            ),
            
            const SizedBox(width: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jobTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 4),

                Text(companyName,
                style: TextStyle(
                  color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
            padding: const EdgeInsets.all(6),
            color: Colors.green,
            child: Text(
              '\$${ hourlyRate} / h',
                style: const TextStyle(
                  color: Colors.white
                ),
              ),
          ),
        ),
        ],)
      ),
    );
  }
}