import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/widgets/custom_textform.dart';
import 'package:physio_doc/widgets/custom_title.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 90),
            const CustomTitle(title: 'Login'),
            const SizedBox(height: 50),
             const CustomTextField(
              hintText: 'email',
              hintColor: hintColor,
              ),
            const SizedBox(height: 20),  
             const CustomTextField(
              hintText: 'password',
              hintColor: hintColor,
              isPassword: true,
              ),
            const SizedBox(height: 10),
            Row(
              children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: buttonClr,
                ),
              ),
            ],)  
          ],
        ),
      ),
    );
  }
}