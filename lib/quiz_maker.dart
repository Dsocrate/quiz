import 'question.dart';
class QuizBrain {
  int _questionumber = (0);
  List<Question> _questionbank = [
    // underscore is being added in order to make the class private (meaning it cannot be tampered with any case

    Question(q:'Nigeria gain her independence on March 1st 1960',a:false),
    Question(q:'Elon musk is not only the richest man in the world but also the CEO of twitter', a: true),
    Question(q:'Chelsea is the pride of Lodon',a:true),
    Question(q:'Some cats are actually allergic to humans',a: true),
    Question(q:'You can lead a cow down stairs but not up stairs.', a:false),
    Question(q:'Approximately one quarter of human bones are in the feet.',a: true),
    Question(q:'A slug\'s blood is green.',a: true),
    Question(q:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',a: true),
    Question(q:'It is illegal to pee in the Ocean in Portugal.',a: true),
    Question(q:'No piece of square dry paper can be folded in half more than 7 times.',a: false),
    Question(q:'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',a: true),
    Question(q:'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',a: false),
    Question(q:'The total surface area of two human lungs is approximately 70 square metres.',a: true),
    Question(q:'Google was originally called \"Backrub\".', a: true),
    Question(q:'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',a: true),
    Question(q:'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',a: true),
  ];
  void nextQuestion(){
    // we use void to create a variable
    if (_questionumber<_questionbank.length- 1){
      _questionumber++;
    }
    print(_questionumber);
    print(_questionbank.length);
  }
  String getQuestionText () {
    return _questionbank[_questionumber].questionText;
  }
  bool getCorrectAnswer (){
    return _questionbank[_questionumber].questionAnswer;

  }

}