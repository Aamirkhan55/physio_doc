import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/login.dart';
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
              SizedBox(height: 60.h),
              const CustomTitle(
                title: 'Sign up',
              ),
               SizedBox(height: 30.h),
              const CustomTextField(
                hintText: 'first name',
                hintColor: hintColor,
              ),
               SizedBox(height: 20.h),
              const CustomTextField(
                hintText: 'last name',
                hintColor: hintColor,
              ),
               SizedBox(height: 20.h),
              const CustomTextField(
                hintText: 'email',
                hintColor: hintColor,
              ),
               SizedBox(height: 20.h),
              const CustomTextField(
                hintText: 'password',
                hintColor: hintColor,
                isPassword: true,
              ),
               SizedBox(height: 50.h),
              CustomButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                },
                title: 'Signup',
                color: buttonClr,
              ),
               SizedBox(height: 40.h),
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
                   SizedBox(height: 40.h),
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
