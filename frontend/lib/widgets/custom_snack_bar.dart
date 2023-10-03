import 'package:flutter/material.dart';

class CustomSnackBar {
  static void showSnackBar({
    required BuildContext context,
    required String text,
    Color backgroundColor = Colors.teal,  // Default background color
    Duration duration = const Duration(seconds: 3),  // Default duration
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        duration: duration,
      ),
    );
  }
}
