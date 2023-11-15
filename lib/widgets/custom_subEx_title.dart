import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomSubExTitle extends StatelessWidget {
  final String title;
  const CustomSubExTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: txtColor,
            ),
          ),
        ),
      ],
    );
  }
}
