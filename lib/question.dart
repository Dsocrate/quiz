class Question {

  late String questionText;
  late bool questionAnswer;
  // we use the action late to remove the diagnotic of nullable

  // the below code is called constructor and we used it to create input value for our class
  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}