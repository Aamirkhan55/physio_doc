import 'package:flutter/material.dart';
import 'package:physio_doc/view/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      toNavigateHomeScreen(context);
    });
  }

  void toNavigateHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.tealAccent,
          ),
          SizedBox(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/Vector.png',
                      width: 155,
                      height: 166,
                    ),
                    Positioned(
                      top: 40,
                      left: 43,
                      child: Image.asset('assets/logo.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Image.asset('assets/nlogo.png'),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset(
                  'assets/Ellipse 2.png',
                  width: 22,
                  height: 22,
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: 7,
                    child: Image.asset(
                      'assets/Rectangle 57.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Image.asset(
                    'assets/Rectangle 58.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
