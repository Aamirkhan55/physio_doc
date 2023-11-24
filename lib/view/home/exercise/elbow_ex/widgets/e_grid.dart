import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';

class CustomElbowExc extends StatefulWidget {
  const CustomElbowExc({
    super.key,
  });

  @override
  State<CustomElbowExc> createState() => _CustomElbowExcState();
}

class _CustomElbowExcState extends State<CustomElbowExc> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e0.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e7.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e8.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e10.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e11.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e12.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e13.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e14.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e15.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e16.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e17.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Elbow Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle e18.png",
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
              borderRadius: BorderRadius.circular(15),
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
                        width: 85.w,
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
                 SizedBox(height: 25.h),
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
