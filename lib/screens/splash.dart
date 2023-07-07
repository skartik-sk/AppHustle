import 'package:apphustle/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: AnimatedSplashScreen(
                  splashIconSize: double.infinity,
                  splash: Image.asset(
                   "assets/images/logo.png"
                  ),
                  duration: 800,
                  splashTransition: SplashTransition.fadeTransition,
                  backgroundColor: Colors.white,
                  nextScreen: loginscreen()),
            ),
          ],
        ),
      ),
    );
  }
}