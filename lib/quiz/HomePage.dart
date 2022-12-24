import 'package:flutter/material.dart';
import 'package:quiz_game/quiz/StartQuiz.dart';

//point d'entrée
void main() {
  runApp(const MyApp());
}

// Le widget racine de notre application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const QuizzPage(title: 'Quiz'),
    );
  }
}

class QuizzPage extends StatelessWidget {
  const QuizzPage({super.key, required this.title});

  final String title;

  // l'état du widget est créé à partir de la classe le réifiant
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
