import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  

  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(
          Icons.arrow_right_alt,
          color: Colors.grey, 
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey), 
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey), 
        ),
        filled: false,
      ),
    );
  }
}