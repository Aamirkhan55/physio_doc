import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomGridExc extends StatefulWidget {
  final String? excTitle;
  final String? exxImage;

  const CustomGridExc({super.key, this.excTitle, this.exxImage});

  @override
  State<CustomGridExc> createState() => _CustomGridExcState();
}

class _CustomGridExcState extends State<CustomGridExc> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s1.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s2.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s3.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s4.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s5.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s6.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s7.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s8.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s9.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s10.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s11.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s12.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s13.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s14.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s15.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s16.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s17.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s18.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s19.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s20.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s21.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s22.png",
    },
    {
      "title": "Shoulder Girdle Depression Isometric Ex.",
      "image": "assets/Rectangle s23.png",
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
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
               const SizedBox(height: 15),
               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 3,),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.back_hand_outlined,
                      color: Colors.red,
                      ),
                    SizedBox(width: 2),
                    Text(
                      '1',
                      style: TextStyle(
                        color: Colors.red
                      ),
                      ),
                    SizedBox(width: 32),  
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.blue,
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
