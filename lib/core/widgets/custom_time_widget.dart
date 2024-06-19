import 'package:flutter/material.dart';

class CustomTimeWidget extends StatelessWidget {
  const CustomTimeWidget({
    super.key,
    required this.formattedStartDate,
    required this.formattedEndDate,
  });

  final String formattedStartDate;
  final String formattedEndDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Start Date: $formattedStartDate", // Replace with actual start date
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Adjust text color for contrast
              ),
            ),
          ),
          Expanded(
            child: Text(
              "End Date: $formattedEndDate", // Replace with actual end date
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Adjust text color for contrast
              ),
            ),
          ),
        ],
      ),
    );
  }
}
