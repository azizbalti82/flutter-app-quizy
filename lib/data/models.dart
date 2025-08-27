import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz {
  final String question;
  final List<String> options;
  final int correctAnswer;

  Quiz({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

class QuizCategory {
  final String name;
  final Color color;
  final IconData icon;
  final List<Quiz> quizzes;

  QuizCategory({
    required this.icon,
    required this.color,
    required this.name,
    required this.quizzes,
  });
}

List<String> getAnswerTexts(QuizCategory category, List<int> selectedIndexes) {
  // Validate that the number of indexes matches the number of quizzes
  if (selectedIndexes.length != category.quizzes.length) {
    throw ArgumentError(
        'Number of selected indexes (${selectedIndexes.length}) '
            'does not match number of quizzes (${category.quizzes.length})');
  }

  List<String> answerTexts = [];

  for (int i = 0; i < category.quizzes.length; i++) {
    final quiz = category.quizzes[i];
    final selectedIndex = selectedIndexes[i];

    // Validate that the selected index is within bounds
    if (selectedIndex < 0 || selectedIndex >= quiz.options.length) {
      throw ArgumentError(
          'Invalid index $selectedIndex for quiz "${quiz.question}". '
              'Options range: 0 to ${quiz.options.length - 1}');
    }

    // Get the answer text for this quiz
    answerTexts.add(quiz.options[selectedIndex]);
  }
  return answerTexts;
}
