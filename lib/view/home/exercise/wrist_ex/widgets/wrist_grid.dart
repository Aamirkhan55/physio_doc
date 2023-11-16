import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomWristExc extends StatefulWidget {
  const CustomWristExc({
    super.key,
  });

  @override
  State<CustomWristExc> createState() => _CustomWristExcState();
}

class _CustomWristExcState extends State<CustomWristExc> {
  final List<Map<String, dynamic>> gridMap = [
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
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    "${gridMap.elementAt(index)['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
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
                const SizedBox(height: 10),
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
                            const SizedBox(width: 5),
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
                      const SizedBox(width: 32),
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
