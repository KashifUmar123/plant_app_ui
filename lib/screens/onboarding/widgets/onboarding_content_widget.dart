import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/onboarding_model.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';

import '../../../utils/app_colors.dart';

class OnboardingContentWidget extends StatelessWidget {
  const OnboardingContentWidget({
    super.key,
    required this.onboardingModel,
    required this.currentIndex,
    required this.showData,
  });
  final OnboardingModel onboardingModel;
  final int currentIndex;
  final bool showData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.05,
        ),
        AnimatedOpacity(
          opacity: showData ? 1 : 0,
          duration: const Duration(milliseconds: 200),
          child: Image.asset(
            onboardingModel.image,
            height: context.height * 0.45,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          height: context.height * 0.03,
        ),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            color: greyColor,
            activeColor: darkGreenColor,
            activeSize: const Size(25.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: context.height * 0.05,
        ),
        AnimatedOpacity(
          opacity: showData ? 1 : 0,
          duration: const Duration(milliseconds: 200),
          child: SizedBox(
            width: context.width * 0.6,
            child: Center(
              child: onboardingModel.title,
            ),
          ),
        ),
        // SizedBox(
        //   height: context.height * 0.05,
        // ),
      ],
    );
  }
}
