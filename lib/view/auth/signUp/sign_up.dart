import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/widgets/custom_textform.dart';
import 'package:physio_doc/widgets/custom_button.dart';
import 'package:physio_doc/widgets/custom_title.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const CustomTitle(
                title: 'Sign up',
              ),
              const SizedBox(height: 30),
              const CustomTextField(
                hintText: 'first name',
                hintColor: hintColor,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'last name',
                hintColor: hintColor,
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 50),
              CustomButton(
                onTap: () {},
                title: 'Signup',
                color: buttonClr,
              ),
              const SizedBox(height: 40),
              Column(
                children: [
                  const Center(
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Image.asset('assets/Group 16.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
