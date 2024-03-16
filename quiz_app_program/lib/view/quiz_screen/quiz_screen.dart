import 'package:flutter/material.dart';
import 'package:quiz_app_program/controller/quiz_screen_controller.dart';
import 'package:quiz_app_program/core/constants/color_constants.dart';
import 'package:quiz_app_program/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  int currentQuestionIndex = 0;
  int ? selectedAnswerIndex;
  int rightAnswersCount = 0;

  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryblack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.primarygrey),

                child: Text(
                  QuizScreenController
                      .flutterQuestions[currentQuestionIndex].question,
                  style: TextStyle(
                      color: ColorConstants.primarywhite, fontSize: 18),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Column(
                children: List.generate(
                    QuizScreenController
                        .flutterQuestions[currentQuestionIndex].optionsList.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;

                              if (selectedAnswerIndex ==
                                  QuizScreenController
                                      .flutterQuestions[currentQuestionIndex]
                                      .correctAnswerIndex) {
                                rightAnswersCount++;
                              }
                              print(rightAnswersCount);

                              setState(() {});
                            }
                          },

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),

                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: buldColor(index),
                                  ),

                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),

                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    QuizScreenController
                                        .flutterQuestions[currentQuestionIndex]
                                        .optionsList[index],

                                    style: TextStyle(
                                        color: ColorConstants.primarywhite,
                                        fontSize: 18),
                                  ),

                                  Icon(
                                    buildIcons(index),
                                    color: buldColor(index),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),

              SizedBox(
                height: 30,
              ),

              InkWell(
                onTap: () {
                  if (currentQuestionIndex <
                      QuizScreenController.flutterQuestions.length - 1) {
                    currentQuestionIndex++;
                    selectedAnswerIndex = null;
                    setState(() {});
                   } 
                  else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            rightAnswerCount: rightAnswersCount,
                          ),
                        ));
                  }
                },

                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryblue),

                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: ColorConstants.primarywhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //build  color

  Color buldColor(int index) {
    if (index ==
            QuizScreenController
                .flutterQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      // to show right answr if  selected answer is not null
      return Colors.green;
    } 
    else if (index == selectedAnswerIndex) {

      // to show whether the selected asnwer is right or wrong

      if (selectedAnswerIndex ==
          QuizScreenController
              .flutterQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Colors.green;
      } 
     else {
        return Colors.red;
      }
    } 
    else {
      // to show the default color as grey
      return ColorConstants.primarygrey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            QuizScreenController
                .flutterQuestions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } 
    else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex !=
          QuizScreenController
              .flutterQuestions[currentQuestionIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
    return null;
  }
}
    
































































                






















                     




















                       
  


                    
                   
                    
                      
            