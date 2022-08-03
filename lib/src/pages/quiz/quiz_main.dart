import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.quiz,
            color: Colors.purple,
          ),
          title: const Text("퀴즈"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.red,
                  child: const Card(child: Center(child: Text("1"))),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.blue,
                  child: const Card(child: Center(child: Text("2"))),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ));
  }
}
