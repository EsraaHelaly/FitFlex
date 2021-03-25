import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

Widget indecator(int index) {
  return Container(
    width: 150,
    child: StepProgressIndicator(
      progressDirection: TextDirection.ltr,
      size: 4,
      fallbackLength: 90,
      totalSteps: 3,
      currentStep: index + 1,
      selectedColor: Color(0xFFB1C9E4),
      unselectedColor: Color(0xFF767676),
    ),
  );
}
