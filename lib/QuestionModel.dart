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

  void setQuestionText(String qT) {
    questionText = qT;
  }

  String getQuestionImage() {
    return questionImage;
  }

  void setQuestionImage(String qI) {
    questionImage = qI;
  }

  bool getReponse() {
    return isCorrect;
  }

  void setReponse(bool r) {
    isCorrect = r;
  }
}
