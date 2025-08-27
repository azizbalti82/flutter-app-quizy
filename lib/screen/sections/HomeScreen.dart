import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizy/data/models.dart';
import 'package:quizy/screen/quiz.dart';
import 'package:quizy/services/colors.dart';
import 'dart:math';

import '../../data/quizes.dart';
import '../../provider/provider.dart';
import '../../widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Provider provider = Get.find<Provider>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                _buildHeader(),

                const SizedBox(height: 20),

                // High Score Card
                _buildHighScoreCard(),

                const SizedBox(height: 30),

                // Stats Cards
                _buildStatsSection(),

                const SizedBox(height: 30),

                // Quick Actions
                _buildQuickActions(context),

                const SizedBox(height: 30),

                // Recent Quizzes
                _buildRecentQuizzes(getRecentCategories()),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );});
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back!',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          'Ready to Quiz?',
          style: TextStyle(
            fontSize: 28,
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildStatsSection() {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            icon: Icons.quiz,
            title: 'Total Quizzes',
            value: '${quizCategories.length}',
            color: Colors.orange,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildStatCard(
            icon: Icons.psychology,
            title: 'Questions',
            value: '${quizCategories.fold(0, (sum, category) => sum + category.quizzes.length)}',
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildActionButton(
                icon: Icons.play_circle_filled,
                title: 'Random Quiz',
                subtitle: 'Start instantly',
                onTap: () => _startRandomQuiz(context),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildActionButton(
                icon: Icons.category,
                title: 'Browse All',
                subtitle: 'Choose category',
                onTap: () => provider.updateSelectedSection(1),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.grey[700], size: 32),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHighScoreCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.accent.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // High Score
                const Text(
                  '🏆 Highest Score',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${provider.highScore.value.toString()} Points',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                // Current Score
                const Text(
                  '🎯 Last Score',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${provider.score.value.toString()} Points',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.military_tech,
              color: Colors.white,
              size: 48,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentQuizzes(List<QuizCategory> recentQuizzes) {
    if(provider.recent.isEmpty){
      return SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Quizzes',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox( // Wrap with SizedBox for height constraint
          height: 120, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left:10,bottom: 10),
            itemCount: recentQuizzes.length,
            itemBuilder: (context, index) {
              final category = recentQuizzes[index];
              return Padding(padding: EdgeInsets.only(right: 10) , child:AspectRatio(aspectRatio: 1.2,child: categoryCard(
                category: category,
              ),
              ));
            },
          ),
        ),
      ],
    );
  }


  void _startRandomQuiz(BuildContext context) {
    final randomCategory = quizCategories[Random().nextInt(quizCategories.length)];
    Get.to(QuizScreen(category: randomCategory));
  }

  void _startCategoryQuiz(BuildContext context, String categoryName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Starting $categoryName quiz!'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  List<QuizCategory> getRecentCategories() {
    List<String> names = provider.recent;
    List<QuizCategory> result =[];
    for(String n in names){
      result.add(quizCategories.firstWhere((q)=>q.name==n));
    }
    return result.reversed.toList();

  }
}