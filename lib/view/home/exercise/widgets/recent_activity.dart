import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class RecentActitvities extends StatelessWidget {
  const RecentActitvities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 230,
                height: 83,
                decoration: BoxDecoration(
                  color: conBgClr,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                           width: 100,
                            height: 65,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Image.asset(
                            'assets/Rectangle 64.png',
                            fit: BoxFit.cover,            
                            ),
                        ),
                      const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shoulder Girdle',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: txtColor,
                              ),
                              ),
                            Text(
                              'Depression',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: txtColor,
                              ),
                              ),
                              Text(
                              'Concentric Ex.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: txtColor,
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
