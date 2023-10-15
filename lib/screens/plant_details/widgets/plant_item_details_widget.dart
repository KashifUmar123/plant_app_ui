import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';

import '../../../utils/app_colors.dart';

class PlantItemDetailsSpecificWidget extends StatelessWidget {
  const PlantItemDetailsSpecificWidget({
    super.key,
    required this.icon,
    required this.itemName,
    required this.itemSpecifics,
  });

  final String icon;
  final String itemName;
  final String itemSpecifics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 36,
            width: 36,
            color: whiteColor,
          ),
          Text(
            itemName,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: context.height * 0.005,
          ),
          Text(
            itemSpecifics,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
