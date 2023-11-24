import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/auth/login/widgets/custom_textform.dart';
import 'package:physio_doc/view/home/home_screen.dart';
import 'package:physio_doc/widgets/custom_button.dart';
import 'package:physio_doc/widgets/custom_title.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90.h),
              const CustomTitle(title: 'Login'),
              SizedBox(height: 50.h),
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
               SizedBox(height: 20.h),
              Row(
                children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: buttonClr.withOpacity(0.5),
                  ),
                ),
                SizedBox(width: 5.w),
               const Text(
                'Remember me',
                style: TextStyle(
                  fontSize: 16,
                  color: greyColor,
                  fontWeight: FontWeight.w400
                ),
                ),
                SizedBox(width: 50.w),
                const Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 16,
                  color: greyColor,
                  fontWeight: FontWeight.w400
                ),
                ),
              ],
              ),
               SizedBox(height: 60.h),
              CustomButton(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                }, 
                title: 'Login', 
                color: buttonClr,
                ),
               SizedBox(height: 50.h),
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
             SizedBox(height: 50.h),
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