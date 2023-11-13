import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomExcField extends StatelessWidget {
  final String title;
  
  const CustomExcField({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: buttonClr,
          width: 2,
          )  
      ),
      child: Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
             style: const TextStyle(
              color: buttonClr,
              fontSize: 22,
              fontWeight: FontWeight.w400
             ), 
            ),
          const Icon(
            Icons.arrow_forward,
            color: buttonClr,
            size: 32,
            ) 
          ],
        )
      ),
    );
  }
}