import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';
import './questionsList.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}


class MyAppState extends State{
  int _questionIndex =0;
  int _totalScore =0;
  final againQuestionList = questionList;

  void _restartQuiz()
  { setState(() {
    _questionIndex = 0;
    _totalScore =0;  
  });
  }

  void _answerQuestion(int score)
  {
    setState((){_questionIndex++;});
    _totalScore += score;
    print('Some shit is happening');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    ( home: Scaffold(
      appBar: AppBar(title: Text('PERSONALITY CHECKER',
                                  style: TextStyle(color: Colors.white,), ),
                     backgroundColor: Colors.cyan,
                     centerTitle: true,),
      body: _questionIndex < questionList.length ? Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questionList: againQuestionList) : 
             Result(_totalScore,_restartQuiz)
      ),
    );
  }
}


