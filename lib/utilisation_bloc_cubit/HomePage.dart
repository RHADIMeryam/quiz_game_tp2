import 'package:flutter/material.dart';
import 'package:quiz_game/utilisation_bloc_cubit/cubit/QuizCubit.dart';
import 'package:quiz_game/utilisation_bloc_cubit/view/StartQuiz.dart';
import 'cubit/QuizState.dart';
import 'data/dataQuestions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => QuizCubit(0, 0, getListeQuestions()),
        child: BlocBuilder<QuizCubit, QuizState>(
          builder: (_, theme) {
            return MaterialApp(
              title: 'Quiz',
              theme: ThemeData(
                primarySwatch: Colors.purple,
              ),
              home: const QuizzPage(title: 'Quiz'),
            );
          },
        ));
  }
}

class QuizzPage extends StatelessWidget {
  final String title;

  const QuizzPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Container(
                    height: 90,
                  ),
                  Container(
                    child: Text("Bienvenu dans ",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Container(
                    child: Text("l'application des quiz ! ",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Container(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/quiz.jfif'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    width: 250,
                    height: 250,
                  ),
                  Container(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => StartQuiz()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
