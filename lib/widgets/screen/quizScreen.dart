import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizy/widgets/screen/quizResultScreen.dart';

import '../../data/models.dart';
import '../../main.dart';
import '../../services/themeService.dart';
import '../widgets.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.category});
  final QuizCategory category;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int selectedAnswer = -1;
  int currentQuestion = 0;
  late List<Quiz> questions;
  List<int> selectedAnswers=[];

  @override
  void initState() {
    super.initState();
    questions = widget.category.quizzes;
    questions.shuffle();
  }

  void handleNext() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedAnswers.add(selectedAnswer);
        selectedAnswer = -1;
      });
    } else {
      //add the last item:
      selectedAnswers.add(selectedAnswer);

      List<int> correctAnswers = widget.category.quizzes.map((c) => c.correctAnswer).toList();
      List<String> selectedAnswersText = getAnswerTexts(widget.category,selectedAnswers);
      //show result
      Navigator.pop(context);
      Get.to(QuizResultScreen(category:widget.category, myAnswers: selectedAnswers, correctAnswers: correctAnswers,myAnswersText: selectedAnswersText));
    }
  }

  @override
  Widget build(BuildContext context) {
    final progress = (currentQuestion + 1) / questions.length;

    return SystemUiStyleWrapper(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          backgroundColor: AppColors.scaffoldBackground,
          automaticallyImplyLeading: false,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: LayoutBuilder(
            builder: (context, constraints) {
              return simpleAppBar(context, text: widget.category.name);
            },
          ),
        ),
        body: Column(
          children: [
            // Progress section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      AppColors.accent,
                    ),
                    minHeight: 4,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Questions ${currentQuestion + 1} of ${questions.length}',
                    style: const TextStyle(
                      color: AppColors.accent,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            quizBody(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  quizBody() {
    return Expanded(
      child: Padding(padding: EdgeInsets.all(30),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question
          Text(
            questions[currentQuestion].question,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          // Answer options
          Expanded(
            child: ListView.builder(
              itemCount: questions[currentQuestion].options.length,
              itemBuilder: (context, index) {
                final isSelected = selectedAnswer == index;
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAnswer = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.accent.withOpacity(0.2)
                            : Colors.grey.shade100,
                        border: Border.all(
                          color: isSelected
                              ? AppColors.accent
                              : Colors.grey.shade300,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              questions[currentQuestion]
                                  .options[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: isSelected
                                    ? AppColors.accent
                                    : Colors.black87,
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.accent
                                    : Colors.grey.shade400,
                                width: 2,
                              ),
                              color: isSelected
                                  ? AppColors.accent
                                  : Colors.transparent,
                            ),
                            child: isSelected
                                ? const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Next button
          SizedBox(
            height: 56,
            child: ElevatedButton(
              onPressed: selectedAnswer != -1 ? handleNext : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                disabledBackgroundColor: AppColors.accent.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentQuestion < questions.length - 1 ? 'Next' : "Show Result",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  if(currentQuestion < questions.length - 1)
                  const SizedBox(width: 8),
                  if(currentQuestion < questions.length - 1)
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
