import 'package:flutter/material.dart';
import 'quiz_maker.dart';

QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(const quiz());
}
class quiz extends StatelessWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('THE QUIZ'),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
// we use stateless widget because there is no change coming for those widget listed above

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}


class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex:5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = quizBrain.getCorrectAnswer();
                if (correctAnswer == true){
                  setState(() {
                    scorekeeper.add(Icon(
                      Icons.check,
                      color: Colors.green,));

                  });
                }
                else {
                  setState(() {
                    scorekeeper.add (Icon(
                      Icons.close,
                      color: Colors.red,));
                  });

                }
                setState(() {
                  quizBrain.nextQuestion();

                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = quizBrain.getCorrectAnswer();
                if (correctAnswer == false){
                  setState(() {
                    scorekeeper.add (Icon(
                      Icons.check,
                      color: Colors.green,));
                  });
// set state is used to create changes after an onPressed
                }
                else {
                setState(() {
                scorekeeper.add (Icon(
                Icons.close,
                color: Colors.red,));
                });

                }
                // the setstate is used to call for the
                setState(() {
                  quizBrain.nextQuestion();
                });
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}
// we can inherit a function from a class to another one by using the function 'extend name of the class' which directly import the function from the named class
// in case of any adjustment we use '@ overide @ to adjust the properties we want to adjust while importing



