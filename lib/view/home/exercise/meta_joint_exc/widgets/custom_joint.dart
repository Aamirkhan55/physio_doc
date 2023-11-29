import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/core/services/provider/favorite_provider.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:provider/provider.dart';

class CustomMetaJointExc extends StatefulWidget {
  const CustomMetaJointExc({
    super.key,
  });

  @override
  State<CustomMetaJointExc> createState() => _CustomMetaJointExcState();
}

class _CustomMetaJointExcState extends State<CustomMetaJointExc> {
  final List<Map<String, dynamic>> metaJointMap = [
    {
      "title": "MCP Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle m1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "MCP Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle m2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "MCP Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle m3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "MCP Joint Flexion Concentric Ex.",
      "image": "assets/Rectangle m4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "MCP Joint Flexion Eccentric Ex.",
      "image": "assets/Rectangle m5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "MCP Joint Flexion Eccentric Ex.",
      "image": "assets/Rectangle m6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "MCP Joint Abduction Isometric Ex.",
      "image": "assets/Rectangle m7.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "MCP Joint Abduction Concentric Ex.",
      "image": "assets/Rectangle m8.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "MCP Joint AbductionConcentric Ex.",
      "image": "assets/Rectangle m9.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "MCP Joint Abduction Concentric Ex.",
      "image": "assets/Rectangle m10.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "MCP Joint Abduction Eccentric Ex.",
      "image": "assets/Rectangle m11.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
  
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: metaJointMap.length,
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
                      "${metaJointMap.elementAt(index)['image']}",
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
                            "${metaJointMap.elementAt(index)['title']}",
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
                                "${metaJointMap.elementAt(index)['exicon']}",
                              ),
                               SizedBox(width: 5.w),
                              Text(
                                "${metaJointMap.elementAt(index)['ex_Value']}",
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
