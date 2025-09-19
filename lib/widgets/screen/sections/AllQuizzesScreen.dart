import 'package:flutter/material.dart';
import 'package:quizy/services/themeService.dart';

import '../../../data/quizes.dart';
import '../../../main.dart';
import '../../widgets.dart';

class AllQuizzesScreen extends StatelessWidget {
  const AllQuizzesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SystemUiStyleWrapper(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('All Quizzes',style: TextStyle(fontWeight: FontWeight.w700),),
        backgroundColor: AppColors.scaffoldBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1.2,
          ),
          itemCount: quizCategories.length,
          itemBuilder: (context, index) {
            final category = quizCategories[index];
            return categoryCard(
              category: category,
            );
          },
        ),
      ),
    ));
  }
}