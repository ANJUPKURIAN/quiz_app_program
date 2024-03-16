import 'package:quiz_app_program/model/quiz_screen_models/questions_model.dart';

class QuizScreenController {
  static List<QuestionsModel> flutterQuestions = [
    QuestionsModel(
      question: "What does Flutter use for layout?",
      optionsList: ["XML", "Dart", "Widgets", "HTML"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which widget is used to create a button in Flutter?",
      optionsList: ["Text", "Button", "RaisedButton", "FlatButton"],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is the main building block of a Flutter application?",
      optionsList: ["Widgets", "Views", "Activities", "Fragments"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "How can you manage state in Flutter?",
      optionsList: [
        "SetState",
        "StatefulWidget",
        "StatelessWidget",
        "Provider"
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What language is used to write Flutter apps?",
      optionsList: ["JavaScript", "Java", "Dart", "Python"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which IDE is commonly used for Flutter development?",
      optionsList: ["Eclipse", "Xcode", "Visual Studio Code", "Android Studio"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question:
          "What is the widget used to create a list with a builder in Flutter?",
      optionsList: ["ListView", "ListBuilder", "ListTile", "ListWidget"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question:
          "What is the purpose of the MaterialApp widget in a Flutter app?",
      optionsList: [
        "Create Material Design components",
        "Handle app routing",
        "Set app icons",
        "None of the above"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question:
          "Which Flutter command is used to run the app on a connected device or emulator?",
      optionsList: [
        "flutter build",
        "flutter test",
        "flutter run",
        "flutter install"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the function of the setState() method in Flutter?",
      optionsList: [
        "Rebuild the entire UI",
        "Update the state of a widget",
        "Retrieve data from a database",
        "None of the above"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a widget in Flutter?",
      optionsList: [
        "A small electronic device",
        "A functional component",
        "A UI element",
        "A type of database"
      ],
      correctAnswerIndex: 2,
    ),
  ];
}

