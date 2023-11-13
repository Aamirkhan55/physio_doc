import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomSearchTextField extends StatelessWidget {
  final String hintTitle;
  const CustomSearchTextField({super.key, required this.hintTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: buttonClr.withOpacity(0.3),
        border: Border.all(
          color: buttonClr.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: greyColor,
            size: 35,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: hintTitle,
                  hintStyle: const TextStyle(
                    color: greyColor,
                    fontSize: 22,
                  ),
                  border: InputBorder.none,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
