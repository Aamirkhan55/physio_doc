import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final Color textColor;
  final Color hintColor;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    this.textColor = Colors.black,
    this.hintColor = Colors.grey,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: buttonClr,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextFormField(
          controller: _textEditingController,
          obscureText: widget.isPassword && !_isPasswordVisible,
          style: TextStyle(color: widget.textColor),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: widget.hintColor),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: widget.hintColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
