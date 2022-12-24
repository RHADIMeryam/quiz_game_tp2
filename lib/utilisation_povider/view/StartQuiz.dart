import 'package:flutter/material.dart';
import '../provider/QuizProvider.dart';
import 'Score.dart';
import 'package:provider/provider.dart';

class StartQuiz extends StatelessWidget {
  StartQuiz({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Consumer<QuizProvider>(
        builder: (context, quizState, child) {
          return Container(
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
                          Text(
                              "${quizState.index}/${quizState.listeQuestions.length - 1}",
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
                          Text("${quizState.score} /100",
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
                      image: AssetImage(quizState
                          .listeQuestions[quizState.index]
                          .getQuestionImage()),
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
                Text(
                    quizState.listeQuestions[quizState.index].getQuestionText(),
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
                          quizState.checkAnswer(true);
                          if (quizState.index==quizState.listeQuestions.length-1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Score(score: quizState.score),
                              ),
                            );
                          }
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
                          quizState.checkAnswer(false);
                          if (quizState.index ==
                              quizState.listeQuestions.length-1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Score(score: quizState.score),
                              ),
                            );
                          }
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
          );
        },
      ),
    );
  }
}
