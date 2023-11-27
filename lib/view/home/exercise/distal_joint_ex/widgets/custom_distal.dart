import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';

class CustomDistJointExc extends StatefulWidget {
  const CustomDistJointExc({
    super.key,
  });

  @override
  State<CustomDistJointExc> createState() => _CustomDistJointExcState();
}

class _CustomDistJointExcState extends State<CustomDistJointExc> {
  final List<Map<String, dynamic>> distalExMap = [
    {
      "title": "DIP Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle d1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "DIP Joint Extension Concentric Ex.",
      "image": "assets/Rectangle d2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "DIP Joint Extension Concentric Ex.",
      "image": "assets/Rectangle d3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "DIP Joint Extension Concentric Ex.",
      "image": "assets/Rectangle d4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "DIP Joint Extension Eccentric Ex.",
      "image": "assets/Rectangle d5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "DIP Joint Extension Eccentric Ex.",
      "image": "assets/Rectangle d6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    }, 
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: distalExMap.length,
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
                    "${distalExMap.elementAt(index)['image']}",
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
                        width: 70.w,
                        child: Text(
                          "${distalExMap.elementAt(index)['title']}",
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
                              "${distalExMap.elementAt(index)['exicon']}",
                            ),
                             SizedBox(width: 5.w),
                            Text(
                              "${distalExMap.elementAt(index)['ex_Value']}",
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
