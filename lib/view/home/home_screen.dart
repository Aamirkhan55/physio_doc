import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/widgets/customExc_field.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
          color: buttonClr,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Image.asset(
                'assets/Group 3.png',
                height: 166,
                width: 155,
                )),
            const SizedBox(height: 40),  
            const CustomExcField(
              hintText: 'Exercise' ,
              ),
            const SizedBox(height: 30),  
            const CustomExcField(
              hintText: 'Injuries' ,
              ), 
              const SizedBox(height: 30),  
            const CustomExcField(
              hintText: 'Accesssories' ,
              ),    
          ],
        ),
      ),
    );
  }
}
