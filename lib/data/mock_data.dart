import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/plant_item_model.dart';
import 'package:plant_app_ui/utils/extensions/fonts_extension.dart';
import 'package:plant_app_ui/utils/k_images.dart';

import '../models/onboarding_model.dart';

// onboarding data
List<OnboardingModel> onboardingData(BuildContext context) => [
      OnboardingModel(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Enjoy your \nlife with ",
                style: context.text30400,
              ),
              TextSpan(
                text: "Plants",
                style: context.text30400.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        image: AppImages.p1,
      ),
      OnboardingModel(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Enjoy your \nlife with ",
                style: context.text30400,
              ),
              TextSpan(
                text: "Lucky Jade",
                style: context.text30400.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        image: AppImages.p2,
      ),
      OnboardingModel(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Enjoy your \nlife with ",
                style: context.text30400,
              ),
              TextSpan(
                text: "Cactus",
                style: context.text30400.copyWith(fontWeight: FontWeight.bold),
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
    name: "Lucky Jade Plant 2",
    image: AppImages.p1,
    price: 12.99,
    isLiked: false,
  ),
  PlantItem(
    name: "Snake Plant 2",
    image: AppImages.p2,
    price: 19.99,
    isLiked: false,
  ),
];
