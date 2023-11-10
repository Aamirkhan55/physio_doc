import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/widgets/custom_textform.dart';
import 'package:physio_doc/widgets/custom_title.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            CustomTitle(title: 'Login'),
            SizedBox(height: 10),
             CustomTextField(
              hintText: 'email',
              hintColor: hintColor,
              )
          ],
        ),
      ),
    );
  }
}