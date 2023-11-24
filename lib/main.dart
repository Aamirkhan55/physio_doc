import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(390, 845),
      child: MaterialApp(
        debugShowCheckedModeBanner: false, 
        title: 'PhysioDoc',
        home: SplashScreen(),
      ),
    );
  }
}