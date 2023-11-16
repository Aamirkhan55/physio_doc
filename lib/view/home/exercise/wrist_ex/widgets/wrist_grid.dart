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
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w0.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "1",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w1.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "2",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w2.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "3",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w3.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w4.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "4-5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w5.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w6.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w7.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w8.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w9.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w10.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w11.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w12.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w13.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w14.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w15.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w16.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w17.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w18.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w19.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w20.png",
      "exicon": "assets/Vector Ex.png",
      "ex_Value": "5",
    },
    {
      "title": "Wrist Joint Flexion Isometric Ex.",
      "image": "assets/Rectangle w21.png",
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
