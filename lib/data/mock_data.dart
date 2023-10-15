import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/plant_item_model.dart';
import 'package:plant_app_ui/utils/k_images.dart';

import '../models/onboarding_model.dart';
import '../utils/app_colors.dart';

// onboarding data
List<OnboardingModel> onboardingData = [
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

// plant items
List<PlantItem> plants = [
  PlantItem(
    name: "Lucky Jade Plant",
    image: AppImages.p1,
    price: 12.99,
    isLiked: false,
  ),
  PlantItem(
    name: "Snake Plant",
    image: AppImages.p2,
    price: 19.99,
    isLiked: false,
  ),
  PlantItem(
    name: "Peperomia Plant",
    image: AppImages.p3,
    price: 12.99,
    isLiked: false,
  ),
  PlantItem(
    name: "Cactus",
    image: AppImages.p2,
    price: 9.99,
    isLiked: false,
  ),
  PlantItem(
    name: "Lucky Jade Plant",
    image: AppImages.p1,
    price: 12.99,
    isLiked: false,
  ),
  PlantItem(
    name: "Snake Plant",
    image: AppImages.p2,
    price: 19.99,
    isLiked: false,
  ),
];
