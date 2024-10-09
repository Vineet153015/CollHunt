import 'package:flutter/material.dart';

class CollegeRow extends StatelessWidget {
  final List<String> colleges;

  const CollegeRow({
    Key? key,
    required this.colleges,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: colleges.map((college) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: OutlinedButton(
              onPressed: () {
                // Handle button press here
              },
              child: Text(college),
            ),
          );
        }).toList(),
      ),
    );
  }
}
