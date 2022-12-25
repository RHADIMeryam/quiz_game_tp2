import 'package:flutter/material.dart';
import 'package:quiz_game/utilisation_bloc_cubit/cubit/QuizCubit.dart';
import 'Score.dart';
import 'package:provider/provider.dart';

class StartQuiz extends StatelessWidget {
  StartQuiz({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quizCubit = context.read<QuizCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Container(
        child: Container(
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
                            "${quizCubit.index}/${quizCubit.listeQuestions.length - 1}",
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
                        Text("${quizCubit.score} /100",
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
                    image: AssetImage(quizCubit.listeQuestions[quizCubit.index]
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
              Text(quizCubit.listeQuestions[quizCubit.index].getQuestionText(),
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
                        quizCubit.checkAnswer(true);
                        if (quizCubit.index ==
                            quizCubit.listeQuestions.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Score(score: quizCubit.score),
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
                        quizCubit.checkAnswer(false);
                        if (quizCubit.index ==
                            quizCubit.listeQuestions.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Score(score: quizCubit.score),
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
        ),
      ),
    );
  }
}
