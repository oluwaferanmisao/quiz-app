import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'questions_identifier.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(context) {
    final bool checkAnswer = data['correct_answer'] == data['user_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionsIdentifier(
            (data['question_index'] as int),
            checkAnswer,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  data['user_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252)),
                ),
                Text(
                  data['correct_answer'] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 181, 254, 246)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
