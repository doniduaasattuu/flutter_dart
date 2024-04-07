import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
// import 'package:adv_basics/models/quiz_question.dart';
import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {},
              );
            }),
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
