import 'package:flutter/material.dart';
import 'package:flutter_survey/flutter_survey.dart';
import 'package:magic_bakery/all_import.dart';

class SurveyPage extends StatelessWidget {
  static const String routeName = "survey_page";


  const SurveyPage({super.key,});

  List<QuestionResult> _questionResults = [];
  final List<Question> _initialData = [
    Question(
      isMandatory: true,
      question: 'هل تعاني من مرض مزمن؟',
      answerChoices: {
        "نعم": [
          Question(
              singleChoice: true,
              question: "حدد نوع المرض؟",
              answerChoices: {
                "سكر": null,
                "ضغط": null,
                "حساسبة اللبن": null,
                "حساسية جلوتين": null,
              })
        ],
        "لا": [
          Question(
            question: "هل تتبع نظام غذائى؟",
            answerChoices: {
              "نعم": null,
              "لا": null,
            },
          )
        ],
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "صحتك تهمنا",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff65451F),
          ),
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Survey(
          onNext: (questionResults) {
            _questionResults = questionResults;
          },
          initialData: _initialData,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          },
          child: Text(
            "انتهيت",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          
        ),
      ),
    );
  }
}
