import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.teal,  // Change cursor color to teal for consistency
      style: GoogleFonts.poppins(
        color: Colors.black,  // Change text color to black for better visibility
        letterSpacing: 0.8,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,  // Change fill color to white for a cleaner look
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.teal),  // Change border color for focused state
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.grey[600],  // Change hint text color for better visibility
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.grey[600],  // Change prefix icon color for better visibility
        ),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $hintText';
        }
        return null;
      },
    );
  }
}
