import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomExcField extends StatelessWidget {
  final String hintText;
  
  const CustomExcField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: buttonClr,
            fontSize: 23
          ),
          suffixIcon: const Icon(
            Icons.arrow_right_alt,
            color: buttonClr, 
            size: 40,
          ),
          border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: buttonClr,
              width: 3,
              ), 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 3,
              color: buttonClr,
              ), 
          ),
          filled: false,
        ),
      ),
    );
  }
}