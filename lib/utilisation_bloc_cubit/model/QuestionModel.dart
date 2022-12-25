class QuestionModel {
  String questionText = "";
  String questionImage = "";
  bool isCorrect = false;

  QuestionModel(
      {required this.questionText,
      required this.questionImage,
      required this.isCorrect});

  String getQuestionText() {
    return questionText;
  }

  String changerQuestionText(String qT) {
    questionText = qT;
    return this.getQuestionText();
  }

  String getQuestionImage() {
    return questionImage;
  }

  String changerQuestionImage(String qI) {
    questionImage = qI;
    return this.questionImage;
  }

  bool getReponse() {
    return isCorrect;
  }

  bool changerReponse(bool r) {
    isCorrect = r;
    return this.getReponse();
  }
}
