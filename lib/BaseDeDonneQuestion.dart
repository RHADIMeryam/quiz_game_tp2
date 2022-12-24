
import 'QuestionModel.dart';

List<QuestionModel> getListeQuestions() {
  List<QuestionModel> listeQuestions = [
    QuestionModel(
        questionText: "La capitale de la Russie est Sotchi ?",
        questionImage: "assets/images/russie.png",
        isCorrect: false),
    QuestionModel(
        questionText: "La capitale du Maroc est Rabat ?",
        questionImage: "assets/images/maroc.png",
        isCorrect: true),
    QuestionModel(
        questionText: "La capitale de l'argentine est Rio de Janeiro ?",
        questionImage: "assets/images/argentine.png",
        isCorrect: false),
    QuestionModel(
        questionText: "La capitale de l'algérie est Oran ?",
        questionImage: "assets/images/algerie.png",
        isCorrect: false),
    QuestionModel(
        questionText: "La capitale de Hongrie est Budapest ?",
        questionImage: "assets/images/hungary.png",
        isCorrect: true),
    QuestionModel(
        questionText: "La capitale de l'italy est Rome ?",
        questionImage: "assets/images/italy.png",
        isCorrect: true),
    QuestionModel(
        questionText: "La capitale de Kenya est Nairobi ?",
        questionImage: "assets/images/kenia.png",
        isCorrect: true),
    QuestionModel(
        questionText: "La capitale de Liban est Antélias ?",
        questionImage: "assets/images/lebanon.png",
        isCorrect: false),
    QuestionModel(
        questionText: "La capitale de Mexique est Mexico ?",
        questionImage: "assets/images/mexico.png",
        isCorrect: true),
    QuestionModel(
        questionText: "La capitale de Norvege est Oslo ?",
        questionImage: "assets/images/norway.png",
        isCorrect: true),
  ];
  return listeQuestions;
}
