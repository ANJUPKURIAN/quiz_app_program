import 'package:flutter/material.dart';
import 'package:quiz_app_program/core/constants/image_constant.dart';
import 'package:quiz_app_program/view/quiz_screen/quiz_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
 void initState() {

  // another method for time setting

  //  Timer(Duration(seconds: 2), () {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => QuizScreen(),
  //         ));
  //   });
  //   super.initState();
  // }


     Future.delayed(Duration(seconds: 3)).then((value) {
          Navigator.pushReplacement(
            context,
              MaterialPageRoute(
                builder: (context) =>QuizScreen(),
                )
                );
        }
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstants.splashimage,
           scale: 1.5,
        ),
      ),

    );
  }
}

