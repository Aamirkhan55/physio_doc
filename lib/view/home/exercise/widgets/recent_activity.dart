import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';

class RecentActitvities extends StatelessWidget {
  final String? title;
  final String? imageUrl;

  const RecentActitvities({
    super.key,
   this.title,
     this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final List<RecentActitvities> recentList = [
      const RecentActitvities(
          title: "Shoulder Girdle Depression Concentric Ex.",
          imageUrl: "assets/Rectangle 64.png"),
      const RecentActitvities(
          title: "Shoulder Girdle Protraction Mobilization Ex.",
          imageUrl: "assets/Rectangle 65.png"),
    ];

    return SizedBox(
      height: 83.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: recentList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 230.w,
                height: 83.h,
                decoration: BoxDecoration(
                  color: conBgClr,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Image.asset(
                            recentList[index].imageUrl!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100.w,
                                child: Text(
                                  recentList[index].title!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: txtColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
