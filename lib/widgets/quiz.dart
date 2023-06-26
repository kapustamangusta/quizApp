import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;
  Quiz({super.key,this.index, this.questionData, this.onChangeAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
              padding: EdgeInsets.all(10),
              child: Text(
                questionData.questions[index].title,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            ...questionData.questions[index].answers
                .map((value) => Answer(
                      title: value['answer'],
                      isCorrect: value.containsKey('isCorect') ? true : false,
                      onChangeAnswer: onChangeAnswer,
                    ))
                .toList(),
      ],
    );
  }
}