import 'package:flutter/material.dart';
import '../model/QuestionModel.dart';

class QuizProvider extends ChangeNotifier {
  int index = 0;
  int score = 0;

  late List<QuestionModel> listeQuestions;

  QuizProvider(this.index, this.score, this.listeQuestions);

  int getIndex() {
    return index;
  }

  int getScore() {
    return score;
  }

  void setIndex(int i) {
    index = i;
    notifyListeners();
  }

  void setScore(int s) {
    score = s;
    notifyListeners();
  }

  List<QuestionModel> getListeQuestions() {
    return listeQuestions;
  }

  void setListeQuestions(List<QuestionModel> lq) {
    listeQuestions = lq;
    notifyListeners();
  }

  void nextQuestion() {
    if (index < listeQuestions.length-1) {
      index++;
    }
    notifyListeners();
  }
  void checkAnswer(bool userChoice) {
    if (listeQuestions[index].getReponse() == userChoice) {
      score = score + 10;
      nextQuestion();
    } else {
      nextQuestion();
    }
    notifyListeners();
  }
}
