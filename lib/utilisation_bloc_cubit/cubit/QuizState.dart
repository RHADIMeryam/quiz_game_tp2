import 'package:flutter/cupertino.dart';
import 'package:quiz_game/utilisation_bloc_cubit/model/QuestionModel.dart';

@immutable
abstract class QuizState {}

class QuizInitial extends QuizState {
  int index = 0;
  int score = 0;
  late List<QuestionModel> listeQuestions;

  QuizInitial(this.index, this.score, this.listeQuestions);
}
