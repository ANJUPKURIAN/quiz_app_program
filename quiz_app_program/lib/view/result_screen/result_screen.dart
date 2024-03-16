import 'package:flutter/material.dart';
import 'package:quiz_app_program/controller/quiz_screen_controller.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.rightAnswerCount});
  final  int rightAnswerCount;
  @override
  Widget build(BuildContext context) {
    final percentage = 
    (rightAnswerCount / QuizScreenController.flutterQuestions.length) * 100 ;

    return Scaffold(
     body:Center(
      child: Text(" your score is  ${percentage.round()} % "),
     ) ,
    );
  }
}