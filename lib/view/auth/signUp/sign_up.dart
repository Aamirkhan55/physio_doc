import 'package:flutter/material.dart';
import 'package:physio_doc/widgets/custom_title.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          children: [
            SizedBox(height: 60),
            CustomTitle(
              title: 'Sign up', 
              ),
          ],
        ),
        ),
    );
  }
}