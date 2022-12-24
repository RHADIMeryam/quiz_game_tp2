import 'package:flutter/material.dart';
import 'HomePage.dart';

class Score extends StatelessWidget {
  int score;
  int reponseCorrect;
  int reponseIncorrect;

  Score({
    required this.score,
    required this.reponseCorrect,
    required this.reponseIncorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Text("Vos résultat sont prêts ",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/result.jfif'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: 250,
                    height: 250,
                  ),
                  Container(
                    height: 40,
                  ),
                  Container(
                    child: Text(" Score : ${score}/ 100",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    child: Text("Réponse correcte :${reponseCorrect}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  Container(
                    child: Text("Réponse incorrecte :${reponseIncorrect}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  Container(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizzPage(
                                    title: 'Quiz',
                                  )));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(18)),
                      child: Text(
                        "Rejouer",
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
