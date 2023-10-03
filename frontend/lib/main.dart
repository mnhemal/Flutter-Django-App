import 'package:flutter/material.dart';
import 'package:frontend/screens/sign_up/screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmers App',
      theme: ThemeData(
        primaryColor: Colors.teal,
        // accentColor: Colors.orange,  // Set accent color to orange for a contrasting theme
        unselectedWidgetColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,  // Set default text color to black
          ),
          button: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}
