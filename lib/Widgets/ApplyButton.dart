import 'package:flutter/material.dart';

class CustomApplyButton extends StatelessWidget {
  final VoidCallback onPressed;

  CustomApplyButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Color(0xFF0E3C6E),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          'Apply Now',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
