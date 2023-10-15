import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';

import '../../../utils/app_colors.dart';

class CustomPlantItemWidget extends StatelessWidget {
  const CustomPlantItemWidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.33,
      width: context.width * 0.425,
      margin: EdgeInsets.symmetric(vertical: context.height * 0.01),
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.02,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: context.height * 0.2,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            width: double.infinity,
            child: AutoSizeText(
              name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$$price",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CircleAvatar(
                radius: 12,
                backgroundColor: blackColor,
                child: Icon(
                  Icons.favorite,
                  color: whiteColor,
                  size: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
