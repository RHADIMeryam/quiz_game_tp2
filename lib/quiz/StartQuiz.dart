import 'package:flutter/material.dart';
import 'BaseDeDonneQuestion.dart';
import 'QuestionModel.dart';
import 'Score.dart';

class StartQuiz extends StatefulWidget {
  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  late List<QuestionModel> listeQuestions;
  int index = 0;
  int score = 0;
  int reponseCorrect = 0;
  int reponseIncorrect = 0;

  @override
  void initState() {
    super.initState();
    listeQuestions = getListeQuestions();
    if (index == listeQuestions.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Score(
            score: score,
            reponseCorrect: reponseCorrect,
            reponseIncorrect: reponseIncorrect,
          ),
        ),
      );
    }
  }

  void checkAnswer(bool userChoice) {
    if (listeQuestions[index].getReponse() == userChoice) {
      setState(() {
        score = score + 10;
        nextQuestion();
        reponseCorrect++;
      });
    } else {
      setState(() {
        nextQuestion();
        reponseIncorrect++;
      });
    }
  }

  void nextQuestion() {
    //afficher question suivante
    if (index < listeQuestions.length - 1) {
      index++;
    }
    //sinon si on a finis nombre de question on affiche resultat
    else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Score(
            score: score,
            reponseCorrect: reponseCorrect,
            reponseIncorrect: reponseIncorrect,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Question : ",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text("${index + 1}/${listeQuestions.length}",
                          style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      Container(
                        height: 40,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Text("Score : ",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text("$score/100",
                          style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(listeQuestions[index].getQuestionImage()),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              width: 400,
              height: 300,
            ),
            Container(
              height: 40,
            ),
            Text(listeQuestions[index].getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            Container(
              height: 30,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      checkAnswer(true);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Vrai",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      checkAnswer(false);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Faux",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
