import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  int score;

  Score({
    required this.score,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
