import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomSubExc extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  

  const CustomSubExc({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 326,
        height: 55,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: subExcClr,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
