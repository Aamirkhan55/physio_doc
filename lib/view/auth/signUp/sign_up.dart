import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/widgets/custom_textform.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            CustomTitle(
              title: 'Sign up', 
              ),
            SizedBox(height: 30),  
            CustomTextField(
              hintText: 'first name',
              hintColor: hintColor,
              ),
            SizedBox(height: 20),  
            CustomTextField(
              hintText: 'last name',
              hintColor: hintColor,
              ), 
            SizedBox(height: 20),  
            CustomTextField(
              hintText: 'email',
              hintColor: hintColor,
              ), 
            SizedBox(height: 20),  
            CustomTextField(
              hintText: 'password',
              hintColor: hintColor,
              ),   
          ],
        ),
        ),
    );
  }
}