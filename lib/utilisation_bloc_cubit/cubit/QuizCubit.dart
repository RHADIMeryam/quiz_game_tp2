import 'package:quiz_game/utilisation_bloc_cubit/model/QuestionModel.dart';
import 'QuizState.dart';
import 'package:bloc/bloc.dart';

class QuizCubit extends Cubit<QuizState> {

  late List<QuestionModel> listeQuestions = getListeQuestions();
  int index = 0;
  int score = 0;

  QuizCubit(this.index, this.score, this.listeQuestions)
      : super(QuizInitial(0, 0, listeQuestions));

  void checkAnswer(bool userChoice) {
    if (listeQuestions[index].getReponse() == userChoice) {
      score = score + 10;
      nextQuestion();
    } else {
      nextQuestion();
    }
  }

  void nextQuestion() {
    if (index < listeQuestions.length - 1) {
      index++;
    }
    emit(QuizInitial(index, score, listeQuestions));
  }

  int getIndex() {
    return index;
  }

  void setIndex(int i) {
    index = i;
    emit(QuizInitial(index, score, listeQuestions));
  }

  List<QuestionModel> getListeQuestions() {
    return listeQuestions;
  }

  set questions(List<QuestionModel> questions) {
    listeQuestions = questions;
    emit(QuizInitial(index, score, questions));
  }


}