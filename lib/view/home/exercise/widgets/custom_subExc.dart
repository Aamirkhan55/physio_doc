import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';

class CustomSubExc extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  

  const CustomSubExc({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 326.w,
        height: 55.h,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: subExcClr,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            title,
            textAlign: TextAlign.start,
            maxLines: 1,
            style: const TextStyle(
              color: catClr,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
