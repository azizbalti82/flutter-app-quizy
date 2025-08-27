import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons_pro/hugeicons.dart';
import 'package:quizy/provider/provider.dart';
import 'package:quizy/screen/quiz.dart';

import 'data/models.dart';

Widget simpleAppBar(BuildContext context, {required String text,Widget? child}) {
  final colorScheme = Theme.of(context).colorScheme;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: colorScheme.primary.withOpacity(0.07), // cardColor equivalent
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(HugeIconsStroke.arrowLeft01, size: 24),
        ),
      ),
      Flexible(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: child ?? Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: colorScheme.onSurface,
            ),
            softWrap: true,
          ),
        ),
      ),
      const SizedBox(width: 45),
    ],
  );
}

Widget categoryCard({
  required QuizCategory category,
}) {
  final Provider provider = Get.find<Provider>();

  return Material(
    borderRadius: BorderRadius.circular(16),
    elevation: 4,
    child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: ()async{
          await Get.to(QuizScreen(category: category,));
          provider.updateSelectedSection(0);

        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: category.color, // fallback color
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                category.color.withOpacity(1),
                category.color.withOpacity(0.9),
                category.color.withOpacity(0.7),
                category.color.withOpacity(0.5),
              ],
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                  Icon(category.icon, size: 35, color: Colors.white),
                  const SizedBox(height: 12),
              FittedBox(
                child:Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),              ),
            ],
          ),
        )
    ),
  );
}