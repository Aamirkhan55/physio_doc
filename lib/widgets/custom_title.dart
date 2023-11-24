import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Image.asset(
          'assets/nlogo.png',
          width: 160.w,
        ),
      ],
    );
  }
}
