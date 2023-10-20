import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/data/mock_data.dart';
import 'package:plant_app_ui/screens/onboarding/widgets/onboarding_content_widget.dart';
import 'package:plant_app_ui/utils/app_colors.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';
import 'package:plant_app_ui/utils/routes/route_names.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // onboarding data list

  // to track current index of the content
  int currentIndex = 0;
  // total context pages in the list [0-2] total 3
  int totalPages = 2;
  // for opacity animation
  bool showData = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.height,
        width: context.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              greyColor.withOpacity(.7),
              greyColor.withOpacity(.1),
              lightGreyColor.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.06),
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
                      onTap: _navigateToHomeScreen,
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: oliveColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  OnboardingContentWidget(
                    onboardingModel: onboardingData(context)[currentIndex],
                    currentIndex: currentIndex,
                    showData: showData,
                  ),
                ],
              ),
              Positioned(
                bottom: context.height * 0.05,
                left: context.width * 0.5 - context.width * 0.05 - 40,
                child: InkWell(
                  onTap: _onPageChanged,
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

  // home screen navigation
  void _navigateToHomeScreen() => Navigator.pushNamed(context, RouteNames.home);

  // handle the currentIndex
  void _onPageChanged() async {
    if (currentIndex < totalPages) {
      showData = false;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 100));
      currentIndex++;

      Timer(const Duration(milliseconds: 500), () {
        showData = true;
        setState(() {});
      });
    } else {
      _navigateToHomeScreen();
    }
  }
}
