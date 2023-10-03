import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInHeader extends StatelessWidget {
  const LogInHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'Welcome Back!',
            style: GoogleFonts.sansita(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Log In to Continue',
            style: GoogleFonts.sansita(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
