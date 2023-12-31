import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/core/services/provider/favorite_provider.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:provider/provider.dart';

class CustomCMSJointExc extends StatefulWidget {
  const CustomCMSJointExc({
    super.key,
  });

  @override
  State<CustomCMSJointExc> createState() => _CustomCMSJointExcState();
}

class _CustomCMSJointExcState extends State<CustomCMSJointExc> {
  final List<Map<String, dynamic>> cmcExMap = [
    {
      "title": "CMC Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle cm1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "CMC Joint Extension Concentric Ex.",
      "image": "assets/Rectangle cm2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "CMC Joint Extension Concentric Ex.",
      "image": "assets/Rectangle cm3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "CMC Joint Extension Concentric Ex.",
      "image": "assets/Rectangle cm4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "CMC Joint Extension Eccentric Ex.",
      "image": "assets/Rectangle cm5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "Finger Isometric Ex.",
      "image": "assets/Rectangle cm6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Finger Flexion/Extension Ex.",
      "image": "assets/Rectangle cm7.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    }, 
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: cmcExMap.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          mainAxisExtent: 270,
        ),
        itemBuilder: (context, index) {
          return Consumer<FavoriteItemModel>(
            builder: (context, value, child) =>
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
                      "${cmcExMap.elementAt(index)['image']}",
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
                            "${cmcExMap.elementAt(index)['title']}",
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
                                "${cmcExMap.elementAt(index)['exicon']}",
                              ),
                               SizedBox(width: 5.w),
                              Text(
                                "${cmcExMap.elementAt(index)['ex_Value']}",
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
            ),
          );
        });
  }
}
