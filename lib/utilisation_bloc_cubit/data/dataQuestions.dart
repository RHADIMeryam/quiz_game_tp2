import '../model/QuestionModel.dart';

List<QuestionModel> getListeQuestions() {
  QuestionModel question = new QuestionModel(
      questionText: '', questionImage: 'questionImage', isCorrect: false);

  List<QuestionModel> listeQuestions = [
    QuestionModel(
        questionText: question
            .changerQuestionText("La capitale de la Russie est Sotchi ?"),
        questionImage:
            question.changerQuestionImage("assets/images/russie.png"),
        isCorrect: question.changerReponse(false)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale du Maroc est Rabat ?"),
        questionImage: question.changerQuestionImage("assets/images/maroc.png"),
        isCorrect: question.changerReponse(true)),
    QuestionModel(
        questionText: question.changerQuestionText(
            "La capitale de l'argentine est Rio de Janeiro ?"),
        questionImage:
            question.changerQuestionImage("assets/images/argentine.png"),
        isCorrect: question.changerReponse(false)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale de l'algérie est Oran ?"),
        questionImage:
            question.changerQuestionImage("assets/images/algerie.png"),
        isCorrect: question.changerReponse(false)),
    QuestionModel(
        questionText: question
            .changerQuestionText("La capitale de Hongrie est Budapest ?"),
        questionImage:
            question.changerQuestionImage("assets/images/hungary.png"),
        isCorrect: question.changerReponse(true)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale de l'italy est Rome ?"),
        questionImage: question.changerQuestionImage("assets/images/italy.png"),
        isCorrect: question.changerReponse(true)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale de Kenya est Nairobi ?"),
        questionImage: question.changerQuestionImage("assets/images/kenia.png"),
        isCorrect: question.changerReponse(true)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale de Liban est Antélias ?"),
        questionImage:
            question.changerQuestionImage("assets/images/lebanon.png"),
        isCorrect: question.changerReponse(false)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale de Mexique est Mexico ?"),
        questionImage:
            question.changerQuestionImage("assets/images/mexico.png"),
        isCorrect: question.changerReponse(true)),
    QuestionModel(
        questionText:
            question.changerQuestionText("La capitale de Norvege est Oslo ?"),
        questionImage:
            question.changerQuestionImage("assets/images/norway.png"),
        isCorrect: question.changerReponse(true)),
  ];
  return listeQuestions;
}
