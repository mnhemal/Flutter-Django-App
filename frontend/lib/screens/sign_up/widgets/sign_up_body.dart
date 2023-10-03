import 'package:flutter/material.dart';
import 'package:frontend/screens/sign_up/widgets/sign_up_footer.dart';
import 'package:frontend/screens/sign_up/widgets/sign_up_form.dart';
import 'package:frontend/screens/sign_up/widgets/sign_up_header.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.05),
          const SignUpHeader(),
          SizedBox(height: 20),
          const SignUpForm(),
          SizedBox(height: 20),
          const SignUpFooter(),
        ],
      ),
    );
  }
}
