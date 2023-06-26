import 'package:flutter/material.dart';
import 'package:flutter_quiz/models/Question.dart';
import 'package:flutter_quiz/widgets/answer.dart';

import '../widgets/progress_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;
  List<Icon> _icons = [];

  void _clearState() => setState(() {
    _questionIndex=0;
    _countResult=0;
    _icons =[];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if(isCorrect){
      _icons.add(Icon(Icons.brightness_1, color: Color(0xFFbd27ff)));
      _countResult++;
    }
    else{
      _icons.add(Icon(Icons.brightness_1, color: Color(0xFF000000)));
    }
    _questionIndex++;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: const Color(0xff2a375a),
          image: DecorationImage(
            image: AssetImage('assets/img/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                data.questions[_questionIndex].title,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            ...data.questions[_questionIndex].answers
                .map((value) => Answer(
                      title: value['answer'],
                      isCorrect: value.containsKey('isCorect') ? true : false,
                      onChangeAnswer: _onChangeAnswer,
                    ))
                .toList(),
            
          ],
        ),
      ),
    );
  }
}
