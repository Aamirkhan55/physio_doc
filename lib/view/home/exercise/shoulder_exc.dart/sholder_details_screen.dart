import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/widgets/custom_subEx_title.dart';

class SholderExDetails extends StatelessWidget {
  const SholderExDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 320.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: buttonClr.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Image.asset('assets/Details s.png')),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: buttonClr.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.favorite_border)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 180.w,
                          child: const CustomSubExTitle(
                            title: 'Shoulder Girdle Depression Isometric Ex.',
                          )),
                      const Icon(Icons.favorite_border_outlined),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  const Text(
                    "Starting position (SP)",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7E7A7A),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    "Patient lying on stomach, arms extended near body on each side.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff8E8888),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  const Text(
                    "Movement description",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7E7A7A),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    "As if shoulder girdle was to move downwards in the direction of the pelvis, in parallel to the bed (the direction of the movement should be demonstrated manually).",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff8E8888),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  const Text(
                    "End position (EP)",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7E7A7A),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    "No actual movement. Communication, exercise instructions: Imagine and try to bring your shoulder girdle closer to your pelvis.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff8E8888),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  const Text(
                    "Note",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7E7A7A),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    "The therapist's hand demonstrates the direction of the movement at the inferior angle of the scapula.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff8E8888),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffC8E6FB),
        child: const Icon(
          Icons.arrow_circle_left_outlined,
          size: 28,
          color: Color(0xff48ABF3),
          ),
      ) ,
    );
  }
}
