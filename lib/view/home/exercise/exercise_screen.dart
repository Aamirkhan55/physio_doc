import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonClr,
        leading: IconButton(
          onPressed: () {}, 
          icon: const Icon(
            Icons.menu,
            size: 32,
            color: Colors.white
            ),
          ),
      ),
    );
  }
}