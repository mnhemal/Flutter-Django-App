import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign Up',
      style: GoogleFonts.sansita(
        color: Colors.teal,  // Change text color to teal for consistency
        fontSize: 48,  // Increase font size for emphasis
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
