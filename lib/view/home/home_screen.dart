import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/exercise_screen.dart';
import 'package:physio_doc/view/home/widgets/custom_darwer.dart';
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
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomDrawer()));
          },
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
             SizedBox(height: 30.h),
            Center(
              child: Image.asset(
                'assets/Group 3.png',
                height: 166.h,
                width: 155.w,
                )),
             SizedBox(height: 40.h),  
             CustomExcField(
               title:  'Exercise' ,
               onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const ExerciseScreen()),
                  );
               },
              ),
            const SizedBox(height: 30),  
             CustomExcField(
              title: 'Injuries' ,
              onTap: () {},
              ), 
             SizedBox(height: 30.h),  
             CustomExcField(
              title: 'Accessories' ,
              onTap: () {},
              ),    
          ],
        ),
      ),
    );
  }
}
