import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/onboarding_model.dart';
import 'package:plant_app_ui/screens/widgets/onboarding_content_widget.dart';
import 'package:plant_app_ui/utils/app_colors.dart';
import 'package:plant_app_ui/utils/app_images.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // onboarding data list
  List<OnboardingModel> data = [
    OnboardingModel(
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Enjoy your \nlife with ",
              style: TextStyle(
                color: blackColor,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: "Plants",
              style: TextStyle(
                color: blackColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      image: AppImages.p1,
    ),
    OnboardingModel(
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Enjoy your \nlife with ",
              style: TextStyle(
                color: blackColor,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: "Lucky Jade",
              style: TextStyle(
                color: blackColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      image: AppImages.p2,
    ),
    OnboardingModel(
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Enjoy your \nlife with ",
              style: TextStyle(
                color: blackColor,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: "Cactus",
              style: TextStyle(
                color: blackColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      image: AppImages.p3,
    ),
  ];

  // to track current index of the content
  int currentIndex = 0;
  // total context pages in the list [0-2] total 3
  int totalPages = 2;
  // for opacity animation
  bool showData = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: context.height * 0.05,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        // TODO: skip
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: oliveColor,
                        ),
                      ),
                    ),
                  ),
                  OnboardingContentWidget(
                    onboardingModel: data[currentIndex],
                    currentIndex: currentIndex,
                    showData: showData,
                  ),
                  // _buildContent(),
                  // _buildPage(),
                ],
              ),
              Positioned(
                bottom: context.height * 0.05,
                left: context.width * 0.5 - context.width * 0.05 - 40,
                child: InkWell(
                  onTap: onPageChanged,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: greenColor,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.east,
                        color: whiteColor,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // handle the currentIndex
  void onPageChanged() async {
    if (currentIndex < totalPages) {
      showData = false;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 100));
      currentIndex++;
      Timer(const Duration(milliseconds: 500), () {
        showData = true;
        setState(() {});
      });
    }
  }
}
