import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/core/services/provider/favorite_provider.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/shoulder_exc.dart/sholder_details_screen.dart';
import 'package:provider/provider.dart';

class CustomGridExc extends StatefulWidget {
  const CustomGridExc({
    super.key,
  });

  @override
  State<CustomGridExc> createState() => _CustomGridExcState();
}

class _CustomGridExcState extends State<CustomGridExc> {
  final List<Map<String, dynamic>> shoulderExMap = [
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s7.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s8.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s9.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s10.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s11.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s12.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s13.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s14.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s15.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s16.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s17.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s18.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s19.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s20.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s21.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s22.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s23.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: shoulderExMap.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          mainAxisExtent: 270,
        ),
        itemBuilder: (context, index) {
          return Consumer<FavoriteItemModel>(
            builder: (context, value, chial) =>
             Container(
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
                      "${shoulderExMap.elementAt(index)['image']}",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Text(
                            "${shoulderExMap.elementAt(index)['title']}",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: txtColor,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            if (value.selectedItem.contains(index)) {
                              value.removeFavoriteItem(index);
                            } else {
                              value.addFavoriteItem(index);
                            }
                          },
                          icon: Icon(
                            value.selectedItem.contains(index)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 32,
                            color: buttonClr,
                          ),
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
                                "${shoulderExMap.elementAt(index)['exicon']}",
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                "${shoulderExMap.elementAt(index)['ex_Value']}",
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SholderExDetails()));
                          },
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
            ),
          );
        });
  }
}
