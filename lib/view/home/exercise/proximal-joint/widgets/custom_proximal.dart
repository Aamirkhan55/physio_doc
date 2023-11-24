import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';

class CustomProJointExc extends StatefulWidget {
  const CustomProJointExc({
    super.key,
  });

  @override
  State<CustomProJointExc> createState() => _CustomProJointExcState();
}

class _CustomProJointExcState extends State<CustomProJointExc> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "PIP Joint Extension Isometric Ex.",
      "image": "assets/Rectangle p1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "PIP Joint Extension Concentric Ex.",
      "image": "assets/Rectangle p2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "PIP Joint ExtensionConcentric Ex.",
      "image": "assets/Rectangle p3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "PIP Joint ExtensionConcentric Ex.",
      "image": "assets/Rectangle p4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "PIP Joint Extension Eccentric Ex.",
      "image": "assets/Rectangle p5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "PIP Joint Extension Eccentric Ex.",
      "image": "assets/Rectangle p6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    }, 
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: gridMap.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          mainAxisExtent: 270,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: buttonClr.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Container(
                  width: 200.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Image.asset(
                    "${gridMap.elementAt(index)['image']}",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 75.w,
                        child: Text(
                          "${gridMap.elementAt(index)['title']}",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: txtColor,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        size: 32,
                        color: txtColor,
                      ),
                    ],
                  ),
                ),
               SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Image.asset(
                              "${gridMap.elementAt(index)['exicon']}",
                            ),
                             SizedBox(width: 5.w),
                            Text(
                              "${gridMap.elementAt(index)['ex_Value']}",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(width: 32.w),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
