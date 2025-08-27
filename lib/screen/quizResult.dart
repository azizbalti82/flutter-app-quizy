import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons_pro/hugeicons.dart';
import 'package:quizy/screen/quiz.dart';
import 'package:quizy/services/colors.dart';
import 'package:quizy/services/sharedPreferences.dart';

import '../data/models.dart';
import '../main.dart';
import '../provider/provider.dart';
import '../widgets.dart';

class QuizResultScreen extends StatefulWidget {
  const QuizResultScreen({super.key, required this.category,required this.myAnswers,required this.correctAnswers,required this.myAnswersText});
  final QuizCategory category;
  final List<String> myAnswersText;
  final List<int> myAnswers;
  final List<int> correctAnswers;
  @override
  State<QuizResultScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizResultScreen> {
  late int count;
  final Provider provider = Get.find<Provider>();

  @override
  void initState() {
    super.initState();
    count = countCorrect();

    //add to recent
    List<String> newRecent = List.from(provider.recent);
    // Remove existing occurrence to avoid duplicates
    newRecent.remove(widget.category.name);
    // Add to the end (most recent)
    newRecent.add(widget.category.name);
    // Get last 3 items (or fewer if list has less than 3)
    newRecent = newRecent.sublist(
      newRecent.length - 3 > 0 ? newRecent.length - 3 : 0,
    );

    // Schedule the update for after the build is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SettingsService.saveRecent(newRecent);
      provider.updateRecent(newRecent);
      //update score
      SettingsService.saveCurrentScore(count);
      provider.updateScore(count);
      if(count>provider.highScore.value) {
        SettingsService.saveHighScore(count);
        provider.updateHighScore(count);
      }
    });

  }


  countCorrect(){
    count = 0;
    for(int index=0;index<widget.myAnswers.length;index++){
      if(widget.myAnswers[index]==widget.correctAnswers[index]){
        count+=100;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
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
              return simpleAppBar(context,text:"",child:RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: count.toString(),
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.black, // or your color
                      ),
                    ),
                    TextSpan(
                      text: ' point',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[800], // or your color
                      ),
                    ),
                  ],
                ),
              ));
            },
          ),
        ),
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 30),child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  // Answer options
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.correctAnswers.length,
                      itemBuilder: (context, index) {
                        final isCorrect = widget.correctAnswers[index] == widget.myAnswers[index];
                        return Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                              margin: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: isCorrect
                                    ? [
                                  Color(0xFF4CAF50),    // Darker green (like C33737)
                                  Color(0xFF66BB6A),    // Medium green (like E57373)
                                  Color(0xFF81C784),    // Lighter green (like DC7676)
                                ] // Soft green
                                    : [Color(0xFFC33737),Color(0xFFE57373),Color(0xFFDC7676), ], // Soft red
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      widget.myAnswersText[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  isCorrect
                                        ? const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 20,
                                    )
                                        : const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                ],
                              ));
                      },
                    ),
                  ),

                  SizedBox(height: 10,),

                  // Next button
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                        Get.to(QuizScreen(category: widget.category,));
                      },
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
                            "Replay",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Transparent background
                        foregroundColor: AppColors.accent, // Text and icon color
                        disabledForegroundColor: AppColors.accent.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(
                            color: AppColors.accent, // Border color
                            width: 2, // Border width
                          ),
                        ),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Back to Home",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              )
        ),
      ),
    );
  }
}
