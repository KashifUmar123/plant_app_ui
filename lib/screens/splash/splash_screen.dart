import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/app_colors.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';
import 'package:plant_app_ui/utils/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToScreen();
  }

  _navigateToScreen() => Timer(const Duration(seconds: 2), () => Navigator.pushNamed(context, RouteNames.onboarding));

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CupertinoActivityIndicator(),
              SizedBox(
                height: context.height * 0.05,
              ),
              const Text(
                "Plant App Challenge",
                style: TextStyle(
                  fontSize: 25,
                  color: blackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
